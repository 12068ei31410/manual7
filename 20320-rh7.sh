#!/bin/bash

echo "
STIG 20320

Verify all files and directories on the system have a valid owner.

Check the owner of all files and directories with the following command:

find / -fstype \`mount | grep root | awk '{print \$5}'\` -nouser 2>/dev/null
"

find / -fstype `mount | grep root | awk '{print $5}'` -nouser 2>/dev/null

echo "
If any files on the system do not have an assigned owner, this is a finding.

STIG 20320
"
