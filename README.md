# Linux User Creation Script

This Bash script automates the creation of two user accounts (`<hostname>-recon` and `<hostname>-logon`) on a Linux server. The `<hostname>-recon` account is also added to the `wheel` group, typically used for granting sudo privileges.

## Description

This script simplifies the process of setting up standardized user accounts on a Linux server. It automatically retrieves the server's hostname and uses it to create the usernames, ensuring consistency across different machines. The script also handles password setting and adds the `hostname-recon` user to the `wheel` group for administrative access.

## Prerequisites

* **Bash:** This script requires Bash to be executed. It should be available by default on most Linux systems.
* **sudo access:** You need to have sudo privileges to run this script, as it performs actions that require root permissions.

## Usage

1. **Save the script:** Save the code as a `.sh` file (e.g., `create_users.sh`).
2. **Make it executable:** Use the following command to make the script executable:

   ```bash
   chmod +x create_users.sh
