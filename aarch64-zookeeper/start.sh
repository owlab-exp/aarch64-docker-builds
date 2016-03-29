#!/bin/bash

if [[ -z "${ZK_ID}" || -z "${ZK_SERVERS}" ]]; then
	echo "Please set ZK_ID and ZK_SERVERS environment variable first."
	exit 1
fi

echo "${ZK_ID}" | tee /data/zookeeper/myid
export MY_SERVER_ID=server.$ZK_ID
echo "${MY_SERVER_ID}=0.0.0.0:2888:3888" | tee -a /opt/zookeeper/conf/zoo.cfg
echo "${ZK_SERVERS}" | tr ',' '\n' | grep -v ${MY_SERVER_ID} | tee -a /opt/zookeeper/conf/zoo.cfg
exec /opt/zookeeper/bin/zkServer.sh start-foreground
