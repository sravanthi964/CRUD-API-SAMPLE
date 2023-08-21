FROM node:11-alpine

WORKDIR /node-app

COPY package.json .
Run  npm_config_unsafe_perm=true 
RUN npm install --quiet

RUN npm install nodemon -g --quiet

COPY . . 

EXPOSE 9000

CMD nodemon -L --watch . index.js
