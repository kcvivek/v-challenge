###Q1: Configuration challenge

Automate the process of provisioning a configuration file onto multiple hosts
in multiple environments. You can use any technique you see fit (shell script,
configuration management tool, etc.). 

Deploy the file to /etc on the remote host.
Set the mode to 0644 and root:users ownership. 
You will need to dynamically set the value for "databaseServer" depending on 
what environment you are deploying to (development or production).

app-config.conf


===

Ans: Run the script run_playbook.sh

This will configure database nodes using Ansible playbook.
Browse directiry contents for details.


