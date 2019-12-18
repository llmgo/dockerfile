FROM ubuntu:bionic
COPY run.sh /usr/local/run.sh
ENV TZ=Asia/Shanghai
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&\
    apt-get update &&\
    apt-get install wget tzdata -y &&\
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime &&\
    echo $TZ > /etc/timezone &&\
    wget -O /tmp/ZenTaoPMS.11.6.1.zbox_64.tar.gz http://dl.cnezsoft.com/zentao/11.6.1/ZenTaoPMS.11.6.1.zbox_64.tar.gz
EXPOSE 80 3306
ENTRYPOINT ["/bin/bash","/usr/local/run.sh"]
