#!/bin/bash

echo "Base Image Update"

# Subscription Management Repository Update – This will enable all file types

sudo subscription-manager repos --enable codeready-builder-for-rhel-8-$(arch)-rpms

sleep 2

sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y

echo "Step One completed..."
sleep 2

sudo yum install ntfs-3g -y

# Virtual Machine Manager install

echo "Virtual Machine Manager Hypervisor Installation"

sudo yum install virt-manager -y

echo "Remember to update packages using:"
echo "sudo dnf update"
echo "or:"
echo "sudo yum update"
