FROM ubuntu:latest

WORKDIR /app

COPY package.json .

RUN apt-get update && apt-get install -y openssl=latest nodejs npm 


RUN npm install

COPY . .

EXPOSE 5000
CMD [ "npm", "start" ]
