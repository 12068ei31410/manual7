#!/bin/bash

echo "
STIG 20330

Verify all files and directories on the system have a valid group.

Check the owner of all files and directories with the following command:

Note: The value after -fstype must be replaced with the filesystem type. XFS is used as an example.

find / -fstype \`mount | grep root | awk '{print \$5}'\` -nogroup 2>/dev/null
"

find / -fstype `mount | grep root | awk '{print $5}'` -nogroup 2>/dev/null

echo "
If any files on the system do not have an assigned group, this is a finding.

STIG 20330
"
