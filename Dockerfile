FROM ubuntu:14.04
MAINTAINER Sai Manoj Bandi <saimanoj.bandi@gmail.com>

RUN apt-get -yqq update
RUN apt-get -yqq install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

ADD app /opt/app
WORKDIR /opt/app

RUN npm install

EXPOSE 80

CMD ["node", "index.js"]