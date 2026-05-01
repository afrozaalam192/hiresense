FROM tomcat:10.1-jdk21

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your app
COPY HireSense.war /usr/local/tomcat/webapps/ROOT.war

# 🔥 Start Tomcat on Railway PORT (runtime fix)
CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT}\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]