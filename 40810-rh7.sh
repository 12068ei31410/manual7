#!/bin/bash

echo "
STIG 40810

If the firewalld package is not installed, ask the System Administrator (SA) if another firewall application (such as iptables) is installed. If an application firewall is not installed, this is a finding. 

Verify the system's access control program is configured to grant or deny system access to specific hosts.
"

echo "
If firewalld is active, check to see if it is configured to grant or deny access to specific hosts or services with the following commands:

firewall-cmd --list-all --zone=\`firewall-cmd --get-default-zone\`
"

firewall-cmd --list-all --zone=`firewall-cmd --get-default-zone`

echo "
STIG 40810
"
