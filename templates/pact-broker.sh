#!/bin/bash
if [ -f "/etc/pact_broker/config" ]; then
  . /etc/pact_broker/config
fi
cd /usr/local/pact_broker
bundle exec rackup -p 8080
