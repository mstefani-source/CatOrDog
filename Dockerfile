FROM ubuntu:latest

LABEL author="ivanow.victor@live.ru"

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.0.20/* /opt/tomcat/.
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME

WORKDIR /opt/tomcat/webapps
ADD /target/catdog.war /opt/tomcat/webapps/


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]