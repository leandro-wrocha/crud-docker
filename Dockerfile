FROM node:18-alpine3.17

WORKDIR '/var/www/app'

COPY './backend' '/var/www/app/backend'

WORKDIR '/var/www/app/backend'

RUN yarn install

CMD ["yarn", "start:dev"]

EXPOSE 3333