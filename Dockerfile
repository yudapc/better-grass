FROM node:19.0.0-alpine3.16

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g pm2

COPY . .

EXPOSE 3083

CMD ["pm2", "start", "pm2.config.js"]
