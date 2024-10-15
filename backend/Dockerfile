FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && npm i pm2 -g

COPY . .

EXPOSE 3000

CMD ["pm2-runtime", "start", "server.js"]
