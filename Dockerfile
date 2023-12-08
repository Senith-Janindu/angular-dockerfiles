# Use Node.js version 15
FROM node:15-alpine as build

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
RUN npm install

# Bundle app source
COPY . .

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Expose port 4200
EXPOSE 4200
