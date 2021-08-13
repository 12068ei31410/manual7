#!/bin/bash

echo "
STIG 21024

Verify that the nodev option is configured for /dev/shm:

cat /etc/fstab | grep /dev/shm
"

cat /etc/fstab | grep /dev/shm

echo "
Verify /dev/shm is mounted with the nodev, nosuid, and noexec options:

mount | grep \"/dev/shm\"
"

mount | grep "/dev/shm"

echo "
If no results are returned, this is a finding.

STIG 21024
"
