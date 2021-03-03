FROM node:12.18.3

ADD app /app

WORKDIR /app

RUN yarn install

EXPOSE 4200
CMD   ["yarn","start"]