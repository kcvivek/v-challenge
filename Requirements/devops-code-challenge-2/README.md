# devops-code-challenge-2017

## Introduction

This project is designed as a quick exercise to gauge a candidate's
understanding of general automation and systems knowledge.

## Terms & Conditions

Challenges are time restricted based on which challenges you have accepted or
have been asked to complete.

- 2 days for candidates only doing one challenge
- 5 days for candidates doing all 3 challenges

*Note: Use of third-party plugins other than those defined within project
is allowed. But please take into account to demonstrate your strengths and
not leave your experience and capabilities to question. No commercial or
proprietary plug-ins are allowed.*

Build this project out in the most appropriate way possible.  Treat it as a
"real-world component" that will be added into our system.  Feel free to
restructure/enhance the project as you see fit. However, you must follow the
restrictions described above. Lastly, solutions should be easily built on
a standard linux, osx machine or browser.

## The Challenges

### Configuration challenge

Automate the process of provisioning a configuration file onto multiple hosts
in multiple environments. You can use any technique you see fit (shell script,
configuration management tool, etc.). 

Deploy the file to /etc on the remote host.
Set the mode to 0644 and root:users ownership. 
You will need to dynamically set the value for "databaseServer" depending on 
what environment you are deploying to (development or production).

app-config.conf

### Docker Challenge

Create a docker container based on tomcat that will run pebble 
(http://pebble.sourceforge.net/)

The container should download the latest stable build of pebble.
The container should set the credentials in tomcat-users.xml to admin/admin.
The Pebble war should run under the context /pebble/

Result should be a zip file with the DockerFile used as well as any supporting
files needed to run the container. 


### Automation Challenge

Devise a plan to automate the installation of an RPM onto RHEL/CENTOS host(s).
The solution should allow for the number of hosts that the RPM will install to 
easily scale. You will need to create a spec file/rpm from the tar below. This
will be a simple apache website. The goal is to run the automation and be able
to browse to http://localhost to see the site.

Result should be the spec file and rpm used as well as the framework used for
automation. For the automation framework, you can provide a synopsis of how
the work would be completed or applicable configs from any popular 
configuration tool (Puppet, Ansible, Chef, etc.)

automation.tar.gz

## Good Luck!
