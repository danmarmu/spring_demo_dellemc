#!/bin/bash
echo on

INSTANCE_ID="`wget -qO- http://instance-data/latest/meta-data/instance-id`"
echo $INSTANCE_ID
server_name="cio-web-$INSTANCE_ID"
echo $server_name
curl -sk https://ec2-52-6-33-161.compute-1.amazonaws.com:8140/packages/current/install.bash | /bin/bash -s agent:certname=${server_name}

