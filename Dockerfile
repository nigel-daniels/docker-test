FROM centos:centos7


RUN mkdir /usr/local/fileserver

WORKDIR /usr/local/fileserver


RUN yum -y update && yum clean all

RUN yum -y install epel-release

RUN yum -y install nodejs git


RUN cd /usr/local/fileserver/

RUN git init

RUN git pull https://github.com/nigel-daniels/fileserver

RUN npm install

CMD node /usr/local/fileserver/fileserver
