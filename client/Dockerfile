FROM node:latest

WORKDIR /usr/app
COPY package.json .
RUN npm install

COPY public public 
COPY views views 
COPY index.js .

COPY ./cmd.sh .
RUN chmod +x cmd.sh

CMD ./cmd.sh && node index.js