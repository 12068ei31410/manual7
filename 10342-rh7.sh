#!/bin/bash

echo "
STIG ID 10342
"

echo "
Verify that the sudoers security policy is configured to use the invoking user's password for privilege escalation.

egrep -i '(!rootpw|!targetpw|!runaspw)' /etc/sudoers /etc/sudoers.d/* | grep -v '#'
"

egrep -i '(!rootpw|!targetpw|!runaspw)' /etc/sudoers /etc/sudoers.d/* | grep -v '#'

echo "
If no results are returned, this is a finding
If \"Defaults !targetpw\" is not defined, this is a finding.
If \"Defaults !rootpw\" is not defined, this is a finding.
If \"Defaults !runaspw\" is not defined, this is a finding.
"

echo "
STIG ID 10342
"
