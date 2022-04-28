FROM centos

LABEL author="ivanow.victor@live.ru"

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.0.20/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
ADD /target/catdog.war /opt/tomcat/webapps/


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]