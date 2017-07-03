### Docker Challenge

Create a docker container based on tomcat that will run pebble 
(http://pebble.sourceforge.net/)

The container should download the latest stable build of pebble.
The container should set the credentials in tomcat-users.xml to admin/admin.
The Pebble war should run under the context /pebble/

Result should be a zip file with the DockerFile used as well as any supporting
files needed to run the container. 


===

Ans: Run the shell scripts=>

   ./pebble_build.sh (For building pebble docker image & pushing out to registery)
   
   ./pebble_docker.sh (Build pebble docker image and run it, accessible locally on port 80)

This will build a docker image based on tomcat/alpine linux, then run pebble blog.

Browse directory contents for details.



