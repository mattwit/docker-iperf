#!/bin/bash
# Run iperf client in Docker container

# Build container named "iperf_c" from image "opengear:iperf"
# Change IP's to match your environment (the IPs are the interfaces you want to bind)
echo "Docker run..."
sudo docker run \
    --name iperf_c \
    --rm \
    -it \
    -p 192.168.200.2:5001:5001/tcp \
    -p 192.168.200.2:5001:5001/udp \
    opengear:iperf \
    -c 192.168.200.1 -t 10 -i 1