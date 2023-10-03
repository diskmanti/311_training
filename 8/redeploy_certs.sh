#! /bin/bash

cd /usr/share/ansible/openshift-ansible
ansible-playbook -i $INVENTORY_FILE \
    playbooks/openshift-master/redeploy-openshift-ca.yml