#!/usr/bin/env python3

from seedemu.compiler import Docker,Graphviz,DistributedDocker, GcpDistributedDocker
from seedemu.core import Emulator, Binding, Filter, BaseVolume
from seedemu.generators import DefaultScionGenerator, CommonRouterForAllIF
from seedemu.generators.providers import GMLDataProvider
from seedemu.layers import ScionBase, ScionRoutingDebug,ScionRouting, ScionIsd, Scion, Ospf,StaticRouting
from seedemu.layers.Scion import LinkType as ScLinkType
from seedemu.services import *

# Initialize
emu = Emulator()
base = ScionBase()
devsvc = GolangDevService( 'amdfxlucas', 'saculolissat@gmx.de' )
repo_urls = ['https://github.com/amdfxlucas/scion','https://github.com/amdfxlucas/go-libp2p',
             'https://github.com/amdfxlucas/go-multiaddr',
             'https://github.com/amdfxlucas/go-orbit-db','https://github.com/amdfxlucas/kubo',
             'https://github.com/amdfxlucas/go-libp2p-pubsub','https://github.com/amdfxlucas/go-ipfs-log',
             'https://github.com/amdfxlucas/boxo']
repo_branches = ['mcast-dev','feature/scion','feature/scion','master','master','master','master','main']
repo_paths =[ '/home/root/repos/scion','/home/root/repos/go-libp2p',
             '/home/root/repos/go-multiaddr','/home/root/repos/go-orbit-db',
             '/home/root/repos/kubo','/home/root/repos/go-libp2p-pubsub',
             '/home/root/repos/go-ipfs-log','/home/root/repos/boxo']

keysvc = ScionMcastEndpointService() # misnomer ! actually only generates a ECDSA keypair on each host
#routing = ScionRouting()
routing = ScionRoutingDebug('/home/root/repos/scion/bin',
                             BaseVolume(source='amdfxlucas-scion',
                                        target=repo_paths[0],
                                        type='volume',name='amdfxlucas-scion')
                            ,rotate_logs=True) 

scion_isd = ScionIsd()
scion = Scion()


#provider = GMLDataProvider("examples/scion/S07-multicast/tiny_test_sample_multi_all_paths.gml")
provider = GMLDataProvider("examples/scion/S07-multicast/tiny_test_sample_multi.gml")
# {'33154': 2, '2914': 3, '13030': 4, '3303': 5, '553': 6, '42': 7, '23467': 8,
# '559': 9, '62454': 10, '1239': 11, '5564': 12, '6939': 13, '3356': 14, '14909': 15}
generator = DefaultScionGenerator(provider)

#ospf = Ospf()        
static = StaticRouting()
        
emu.addLayer(base)
emu.addLayer(routing)
emu.addLayer(devsvc)
emu.addLayer(keysvc)
emu.addLayer(scion_isd)
emu.addLayer(scion)     
emu.addLayer(static)
# emu.addLayer(ospf)

emu = generator.generate_custom(14,20,emu)

'''
BestSetSize: 20
CandidateSetSize: 100
MaxExpTime: 63
Filter:
  MaxHopsLength: 10
  AsBlackList: []
  IsdBlackList: []
  AllowIsdLoop: true
Type: ""
'''
reg = emu.getRegistry()
assert  len(base.getAsns()) == len(provider.getASes())
print( f'nr of ASes  provider: {len(provider.getASes())} base: {len(base.getAsns())}')
for asn in base.getAsns():
    
    _as = base.getAutonomousSystem(asn)
    _as.setBeaconingIntervals('90s', '90s', '90s') # the default is 5s for each
    # setBeaconPolicy()

    
    routers = [ _as.getRouter(r) for r in _as.getRouters() ]
    # install DevService on all routers
    for i, rnode in enumerate(routers):
        brsvc =devsvc.install(f'dev_br{asn}_{i}')
        for j in range(len(repo_urls)):
          brsvc.checkoutRepo(repo_urls[j],repo_paths[j],repo_branches[j],AccessMode.shared)
        emu.addBinding(Binding(f'dev_br{asn}_{i}', filter=Filter(nodeName=rnode.getName(), asn=asn)))
    # install DevSvc on Ctrl-service
    cssvc = devsvc.install(f'dev_cs{asn}_0')
    for j in range(len(repo_urls)):
      cssvc.checkoutRepo(repo_urls[j],repo_paths[j],repo_branches[j],AccessMode.shared)
    emu.addBinding(Binding(f'dev_cs{asn}_0', filter=Filter(nodeName=f'cs1', asn=asn)))
    
    number_of_hosts = 1
    for i in range(number_of_hosts):
      hname = f'host{asn}_{i}'
      host = _as.createHost(hname)
      host.addSharedFolder( "/etc/localtime", "/etc/localtime", mode="ro",read_only=True)
      for netname in _as.getNetworks():
          net = _as.getNetwork(netname)
          if net.getType() == NetworkType.Local:
             host.joinNetwork(net.getName()) 
             break
       # install p2p keypair
      keysvc.install(f'peer_{asn}_{i}')
      emu.addBinding(Binding(f'peer_{asn}_{i}',filter=Filter(nodeName=hname,asn=asn,allowBound=True)))
      # install DevService
      hostsvc = devsvc.install(f'dev_peer{asn}_{i}')
      for j in range(len(repo_urls)):
        hostsvc.checkoutRepo(repo_urls[j],repo_paths[j],repo_branches[j],AccessMode.shared)
      emu.addBinding(Binding(f'dev_peer{asn}_{i}', filter=Filter(nodeName=hname, asn=asn,allowBound=True)))


            


emu.render()

# Compilation
emu.compile(Docker(), './output_metrics99')
# emu.compile( DistributedDocker() ,'./output_swarm')
#emu.compile( GcpDistributedDocker() ,'./output_swarm_gcp')
#emu.compile(Graphviz(), './output_graph_metrics5')

