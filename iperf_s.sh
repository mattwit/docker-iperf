#!/bin/bash
# Run iperf server in Docker container

# Build container named "iperf_s" from image "opengear:iperf" 
# Change IP's to match your environment (the IPs are the interfaces you want to bind)
echo "Docker run..."
sudo docker run \
    --name iperf_s \
    --rm \
    -itd \
    -p 192.168.200.1:5001:5001/tcp \
    -p 192.168.200.1:5001:5001/udp \
    opengear:iperf \
    -s