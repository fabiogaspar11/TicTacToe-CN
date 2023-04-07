FROM node:latest
WORKDIR /usr/app
COPY package.json .
COPY bucketKey.json .
RUN npm install

COPY index.js .
ENTRYPOINT ["node","index.js"]