FROM node:18-alpine3.15

RUN mkdir -p /home/src/app
WORKDIR /home/src/app

COPY hello-bootcamp/package*.json /home/src/app/

run npm install

COPY hello-bootcamp/ .

EXPOSE 4000
CMD ["npm", "server.js"]
