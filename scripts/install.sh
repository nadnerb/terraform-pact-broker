#!/usr/bin/env bash
set -e

# Updating and Upgrading dependencies
echo "Installing ruby"
sudo apt-get update -y -qq > /dev/null
sudo apt-get upgrade -y -qq > /dev/null
sudo apt-get install -y vim screen git

echo "Installing ruby"

sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get update
# TODO use ruby version
sudo apt-get install -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev libpq-dev ruby2.2 ruby2.2-dev
sudo apt-get install -y nginx apache2-utils

sudo gem install bundler --no-rdoc --no-ri

echo "Installing pact broker"
git clone https://github.com/bethesque/pact_broker
sudo cp -r pact_broker/example /usr/local/pact_broker

sudo adduser pact --disabled-password --system
sudo chown -R pact /usr/local/pact_broker
