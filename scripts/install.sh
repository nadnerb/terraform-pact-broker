#!/usr/bin/env bash

set -e

echo "Installing ruby"

apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update
# TODO use ruby version
apt-get install -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev libpq-dev ruby2.2 ruby2.2-dev
apt-get install -y nginx apache2-utils

gem install bundler

echo "Installing pact broker"
git clone https://github.com/bethesque/pact_broker
cp -r pact_broker/example /usr/local/pact_broker

