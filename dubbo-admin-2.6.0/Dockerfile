FROM registry.cn-beijing.aliyuncs.com/llmgo/tomcat-8.5.37:v2
MAINTAINER liliming
ENV REFRESHED 2019-07-09
ENV TZ=Asia/Shanghai
WORKDIR /usr/local/tomcat
ADD dubbo-admin-2.6.0.war /root/
COPY dubbo.properties /root/
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    \rm -rf /usr/local/tomcat/webapps/* && \
    mkdir /usr/local/tomcat/webapps/ROOT &&\
    \unzip /root/dubbo-admin-2.6.0.war -d /usr/local/tomcat/webapps/ROOT &&\
    \mv /root/dubbo.properties /usr/local/tomcat/webapps/ROOT/WEB-INF/dubbo.properties
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"] 
