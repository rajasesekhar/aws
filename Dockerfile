FROM Centos:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.60* /opt/tomcat
COPY ./webapp:war /opt/tomcat/webapps
EXPOSE 8080
CMD [" /opt/tomcat/bin/catalina.h", "run"]
