FROM tomcat:8.0

ARG var
RUN apt-get update \
    && apt-get install -y wget \
    && apt-get install -y unzip

#RUN wget https://github.com/kcvivek/v-challenge/blob/master/challenge02-docker/pebble-2.6.4.war
RUN wget -q -Y off --show-progress -O /tmp/pebble-2.6.4.zip https://downloads.sourceforge.net/project/pebble/pebble/2.6.4/pebble-2.6.4.zip \
	&& unzip /tmp/pebble-2.6.4.zip -d /tmp \
	&& cp /tmp/pebble-2.6.4/pebble-2.6.4.war /usr/local/tomcat/webapps/ \
	&& echo "Pebble war file copied to tomcat.." 

ENV CATALINA_HOME=/usr/local/tomcat
RUN mkdir /usr/local/tomcat/webapps/kc
RUN echo "Welcome to KC's page" >> /usr/local/tomcat/webapps/kc/index.html

#COPY /pebble-2.6.4.war /usr/local/tomcat/webapps/
RUN ln -sf /usr/local/tomcat/webapps/pebble-2.6.4 /usr/local/tomcat/webapps/pebble

COPY /tomcat-users.xml ${CATALINA_HOME}/conf/

