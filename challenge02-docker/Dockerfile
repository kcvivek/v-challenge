FROM tomcat:8.0

ARG var
RUN apt-get update \
    && apt-get install -y wget

#RUN wget https://github.com/kcvivek/v-challenge/blob/master/challenge02-docker/pebble-2.6.4.war
RUN wget https://github.com/kcvivek/v-challenge/blob/master/challenge02-docker/readme.txt

ENV CATALINA_HOME=/usr/local/tomcat
RUN mkdir /usr/local/tomcat/webapps/kc
RUN echo "Welcome to KC's page" >> /usr/local/tomcat/webapps/kc/index.html

COPY /pebble-2.6.4.war /usr/local/tomcat/webapps/
RUN ln -sf /usr/local/tomcat/webapps/pebble-2.6.4 /usr/local/tomcat/webapps/pebble

COPY /tomcat-users.xml ${CATALINA_HOME}/conf/

