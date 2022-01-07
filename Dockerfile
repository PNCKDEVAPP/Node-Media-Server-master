FROM node:lts-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 1935 8000 8443

CMD ["node","bin/app.js"]