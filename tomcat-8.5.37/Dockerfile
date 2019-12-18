FROM tomcat:8.5.37
LABEL maintainer="liliming"
ENV TOMCAT_VERSION 8.5.37
ENV REFRESHED 2019-05-20
ENV TZ=Asia/Shanghai
WORKDIR /usr/local/tomcat
ADD server.xml catalina.sh /usr/local/tomcat/bin/
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    rm -rf /usr/local/tomcat/webapps/* && \
    mv /usr/local/tomcat/bin/server.xml /usr/local/tomcat/conf/ && \
    mkdir /usr/local/tomcat/webapps/ROOT
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"] 
