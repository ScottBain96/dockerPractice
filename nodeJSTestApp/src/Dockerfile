FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

ENV messageTest="this is my custom message"

EXPOSE 8080

CMD [ "npm", "start" ]