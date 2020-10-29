FROM node:alpine

WORKDIR /app

COPY ./package*.json /app/
RUN npm ci

ADD . /app/

CMD ["node", "/app/index.js"]
