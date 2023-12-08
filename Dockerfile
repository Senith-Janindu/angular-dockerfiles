#stage 1

FROM node:14-alpine as build
WORKDIR /usr/src/app
# Install app dependencies
COPY package.json .
RUN npm install
# Bundle app source
COPY . .
# Angular CLI
RUN npm install -g @angular/cli
EXPOSE 4200
