#!/usr/bin/env bash

if ! [ `which ansible` ]; then
  apt-get update -y
  apt-get install software-properties-commonapt-get install software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  apt-get update -y
  apt-get install -y ansible
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml -v
