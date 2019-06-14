FROM tomcat:8.5.16-jre8-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

COPY  gameoflife.war /usr/local/tomcat/webapps/ROOT.war
#RUN chmod 777 /usr/local/tomcat/webapps/gameoflife.war
CMD ["catalina.sh", "run"]

#FROM openjdk:12-alpine

#RUN rm -rf /usr/local/tomcat/webapps/*

#COPY gameoflife-core-1.0-SNAPSHOT.jar /demo.jar

#CMD ["java", "-jar", "/demo.jar"]

