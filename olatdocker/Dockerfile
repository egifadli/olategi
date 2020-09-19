# we are extending everything from tomcat:8.0 image ...
FROM egifadli/automationolat:1

MAINTAINER egifadli

#COPY context.xml /usr/local/tomcat/conf/
#RUN chmod 777 /usr/local/tomcat/conf/context.xml

# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
#COPY openolat.war /usr/local/tomcat/webapps/
#RUN chmod 777 /usr/local/tomcat/webapps/openolat.war

COPY olat.local.properties /usr/local/tomcat/webapps/openolat/WEB-INF/classes/olat.local.properties
RUN chmod 777 /usr/local/tomcat/webapps/openolat/WEB-INF/classes/olat.local.properties

ENV DB_HOST=172.18.0.20

#ARG DB_HOST_IP=172.18.0.20

#ENV DB_HOST=$DB_HOST_IP
