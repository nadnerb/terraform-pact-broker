#!/bin/bash
set -e

sudo cp /tmp/upstart.conf /etc/init/pact-broker.conf
sudo cp /tmp/nginx-upstart.conf /etc/init/nginx.conf

echo "Starting Pact Broker"
sudo start pact-broker
echo "Starting nginx"
sudo start nginx
