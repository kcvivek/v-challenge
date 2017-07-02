#!/bin/bash
# Author: Vivek KC
# Description: Rollout website using ansible-playbook

ansible-playbook -i ansible/hosts ansible/ansible_pb_webroll.yml
