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

===

Ans: Run the shell script pebble_build.sh

This will build a docker image based on tomcat/alpine linux, then run pebble blog.

Browse directory contents for details.
