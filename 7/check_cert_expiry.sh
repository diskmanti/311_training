#! /bin/bash

cd /usr/share/ansible/openshift-ansible
ansible-playbook -v -i $INVENTORY_FILE \
    playbooks/openshift-checks/certificate_expiry/easy-mode.yaml