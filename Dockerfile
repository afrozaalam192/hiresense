FROM tomcat:10.1-jdk21

RUN rm -rf /usr/local/tomcat/webapps/*

# Replace port 8080 with ${PORT}
RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml

COPY HireSense.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]