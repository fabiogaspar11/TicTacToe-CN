FROM node:latest

WORKDIR /usr/app
COPY package.json .
RUN npm install

COPY public public 
COPY views views 
COPY index.js .

COPY ./cmd.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/cmd.sh

ENTRYPOINT ["node","index.js"]