FROM tomcat:10.1-jdk21

# 🔥 force rebuild
RUN echo "Rebuild trigger"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY HireSense2.war /usr/local/tomcat/webapps/ROOT.war

CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT}\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]