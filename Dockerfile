FROM tomcat:8.0
LABEL maintainer=anweshannu111@gmail.com
ADD ./webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["pwd"]
CMD ["ls -la"]
CMD ["catalina.sh", "run"]
