#!/bin/bash

echo "
STIG ID 10341
"

echo "
Verify the \"sudoers\" file restricts sudo access to authorized personnel.

grep -iw 'ALL' /etc/sudoers /etc/sudoers.d/*
"

grep -iw 'ALL' /etc/sudoers /etc/sudoers.d/*

echo "
If the either of the following entries are returned, this is a finding:
ALL ALL=(ALL) ALL
ALL ALL=(ALL:ALL) ALL
"

echo "
STIG ID 10341
"
