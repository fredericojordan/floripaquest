FROM node:10.16-alpine

# problems with bcrypt
RUN apk --no-cache add --virtual builds-deps build-base python

WORKDIR /usr/src/floripaquest/
COPY package.json ./

RUN npm install -d

COPY . .

CMD [ "node", "server/js/main.js" ]
