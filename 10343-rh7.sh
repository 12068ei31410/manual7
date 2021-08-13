#!/bin/bash

echo "
STIG ID 10343
"

echo "
Verify the operating system requires re-authentication when using the \"sudo\" command to elevate privileges.

grep -i 'timestamp_timeout' /etc/sudoers /etc/sudoers.d/*
"

grep -i 'timestamp_timeout' /etc/sudoers /etc/sudoers.d/*

echo "
If \"timestamp_timeout\" is set to a negative number, is commented out, or no results are returned, this is a finding.
"

echo "
STIG ID 10343
"
