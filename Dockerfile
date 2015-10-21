FROM tomcat:jre8
MAINTAINER "andro <andro999b@gmail.com>"
ADD files/tomcat-users.xml /usr/local/tomcat/conf/
RUN ["rm", "-rf", "/usr/local/tomcat/webapps/"]
ADD files/probe.war /usr/local/tomcat/webapps/
EXPOSE 8080
