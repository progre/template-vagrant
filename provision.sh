#!/usr/bin/env bash

if ! [ `which ansible` ]; then
	apt-get update -y
	apt-get install -y ansible
fi
tmp_path=/tmp/provision-ansible
mkdir $tmp_path
cp -f /vagrant/ansible/hosts $tmp_path
chmod 664 $tmp_path/hosts
ansible-playbook -i $tmp_path/hosts /vagrant/ansible/playbook.yml
rm -rf $tmp_path
