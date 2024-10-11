
#!/bin/bash
# This script creates two user accounts (`<hostname>-recon` and `<hostname>-logon`) on a Linux server. 
# The `<hostname>-recon` account is added to the wheel group (for sudo access).
# Writen by Andrew dru0pa@gmail.com



# Get the hostname of the server.
hostname=$(hostname -s)

# Create the users.
echo "Create user  $hostname-recon..."
sudo useradd "$hostname-recon"
echo "Create user $hostname-logon..."
sudo useradd "$hostname-logon"

# Set the passwords for the users.
echo "Setting password for $hostname-recon..."
sudo passwd "$hostname-recon"
echo "Setting password for $hostname-logon..."
sudo passwd "$hostname-logon"

# Show the accounts created.
echo "Accounts created:"
echo " - $hostname-recon"
echo " - $hostname-logon"

# Add the hostname-recon user to the wheel group.
echo "Adding the $hostname-recon to wheel group"
sudo usermod -aG wheel "$hostname-recon"
