#!/bin/bash
# this scripts starts the simulation with only a single host per AS
docker compose up --scale hnode_2_host2_1=0 --scale hnode_2_host2_2=0 --scale hnode_2_host2_3=0 --scale hnode_2_host2_4=0 \
--scale hnode_3_host3_1=0 --scale hnode_3_host3_2=0 --scale hnode_3_host3_3=0 --scale hnode_3_host3_4=0 \
--scale hnode_4_host4_1=0 --scale hnode_4_host4_2=0 --scale hnode_4_host4_3=0 --scale hnode_4_host4_4=0 \
--scale hnode_5_host5_1=0 --scale hnode_5_host5_2=0 --scale hnode_5_host5_3=0 --scale hnode_5_host5_4=0 \
--scale hnode_6_host6_1=0 --scale hnode_6_host6_2=0 --scale hnode_6_host6_3=0 --scale hnode_6_host6_4=0 \
--scale hnode_7_host7_1=0 --scale hnode_7_host7_2=0 --scale hnode_7_host7_3=0 --scale hnode_7_host7_4=0 \
--scale hnode_8_host8_1=0 --scale hnode_8_host8_2=0 --scale hnode_8_host8_3=0 --scale hnode_8_host8_4=0 \
--scale hnode_9_host9_1=0 --scale hnode_9_host9_2=0 --scale hnode_9_host9_3=0 --scale hnode_9_host9_4=0 \
--scale hnode_10_host10_1=0 --scale hnode_10_host10_2=0 --scale hnode_10_host10_3=0 --scale hnode_10_host10_4=0 \
--scale hnode_11_host11_1=0 --scale hnode_11_host11_2=0 --scale hnode_11_host11_3=0 --scale hnode_11_host11_4=0 \
--scale hnode_12_host12_1=0 --scale hnode_12_host12_2=0 --scale hnode_12_host12_3=0 --scale hnode_12_host12_4=0 \
--scale hnode_13_host13_1=0 --scale hnode_13_host13_2=0 --scale hnode_13_host13_3=0 --scale hnode_13_host13_4=0 \
--scale hnode_14_host14_1=0 --scale hnode_14_host14_2=0 --scale hnode_14_host14_3=0 --scale hnode_14_host14_4=0 \
--scale hnode_15_host15_1=0 --scale hnode_15_host15_2=0 --scale hnode_15_host15_3=0 --scale hnode_15_host15_4=0
