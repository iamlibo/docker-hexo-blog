FROM node:12-alpine
MAINTAINER libo<lib@jcinfo.com>

RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main/" > /etc/apk/repositories

RUN apk add git && \
    npm config set registry https://registry.npm.taobao.org --global && \
    npm config set disturl https://npm.taobao.org/dist --global && \
    npm install -g hexo
    
WORKDIR /data
