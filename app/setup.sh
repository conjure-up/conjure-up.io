#!/bin/sh

sudo apt-add-repository -y ppa:juju/stable
sudo apt-add-repository -y ppa:conjure-up/next
sudo apt update
sudo apt-get -qyf install conjure-up
