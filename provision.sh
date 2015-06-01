#!/usr/bin/env bash

if ! [ `which ansible` ]; then
  apt-get update -y
  apt-get install software-properties-commonapt-get install software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  apt-get update -y
  apt-get install -y ansible
fi

GEM_PATH=`which gem`;

ansible-playbook -i /vagrant/tasks/hosts /vagrant/tasks/main.yml -v -s --extra-vars gem_path="${GEM_PATH}"
