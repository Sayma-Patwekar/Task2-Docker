FROM tomcat:9	
EXPOSE 6001
#CMD ["mvn","clean install","-Dv=${BUILD_NUMBER}"]
#take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps
