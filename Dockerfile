FROM node:lts-stretch-slim

WORKDIR /opt/server

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/AravindanSridhar/node-static-server.git

WORKDIR /opt/server/node-static-server

COPY . /opt/server/node-static-server/public

RUN npm install --save

ENTRYPOINT npm start
