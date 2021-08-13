echo "
STIG ID 40711
"

echo "
Verify the SSH daemon prevents remote hosts from connecting to the proxy display.

grep -i x11uselocalhost /etc/ssh/sshd_config
"

grep -i x11uselocalhost /etc/ssh/sshd_config

echo "
If the \"X11UseLocalhost\" keyword is set to \"no\", is missing, or is commented out, this is a finding.
"

echo "
STIG ID 40711
"
