#!/bin/bash
#Quick script to create users for CyberArk Linux for the Logon Account and the recon Account
#The recon account is also added to the wheel group to managed reconsile for the Linux server.

# Add the first user
useradd logon
echo "Set password for logon:"
passwd logon

# Add the second user and add to wheel group
useradd recon
usermod -aG wheel recon
echo "Set password for recon:"
passwd recon
