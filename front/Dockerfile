FROM node:latest

WORKDIR app/

COPY package*.json ./

COPY angular.json ./

COPY tsconfig*.json ./

COPY proxy.conf.json ./

RUN npm install && npm install -g @angular/cli

COPY ./src $HOME/app/src

EXPOSE 4200

CMD [ "ng" , "serve" ]
