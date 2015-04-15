#!/bin/bash

set -xe


rpm -q wget || sudo yum install -y wget
[ -e hpsum.rpm ] || wget -q -O hpsum.rpm http://ftp.hp.com/pub/softlib2/software1/pubsw-linux/p107016750/v99331/rhel6/x86_64/hpsum-7.1.0-12.rhel6.x86_64.rpm

rpm -q hpsum || sudo yum install -y hpsum.rpm

pgrep hpsum || hpsum





