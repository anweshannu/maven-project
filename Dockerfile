FROM tomcat:8.0
LABEL maintainer=anwesh@123.com
ADD ./webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT/
EXPOSE 8080
CMD ["pwd"]
CMD ["ls -la"]
CMD ["catalina.sh", "run"]
