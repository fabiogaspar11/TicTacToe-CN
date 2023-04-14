FROM node:latest

WORKDIR /usr/app
COPY package.json .
RUN npm install

COPY public public 
COPY views views 
COPY index.js .

RUN find /usr/app -type f -print0 | xargs -0 sed -i "s|SERVER_URI|${SERVER_URI:-localhost}|g"

ENTRYPOINT ["node","index.js"]