FROM node

WORKDIR /srv/app

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm ci

COPY . ./

CMD ["npm", "start"]