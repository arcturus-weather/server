FROM node:18-buster-slim

# create work direction
RUN mkdir -p /usr/src/weather-server

WORKDIR /usr/src/weather-server

COPY . .

RUN npm config set registry https://registry.npmmirror.com
RUN npm install

EXPOSE 3000

# start the server
CMD [ "npm", "run", "start:prod" ]