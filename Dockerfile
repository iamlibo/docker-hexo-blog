FROM node:16-buster
LABEL maintainer="thinker<156884481@qq.com>"
LABEL version="1.0"

RUN sed -i 's#http://deb.debian.org#https://mirrors.tuna.tsinghua.edu.cn#g' /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y gnutls-bin vim && \
    npm config set registry https://registry.npm.taobao.org --global && \
    npm config set disturl https://npm.taobao.org/dist --global && \
    npm install -g hexo-cli && \
    npm install -g hexo
    
RUN git config --global http.sslVerify false && \
    git config --global http.postBuffer 9048576000
#    git config --global user.email "156884481@qq.com" && \
#    git config --global user.name "thinker"

WORKDIR /data

ENTRYPOINT bash