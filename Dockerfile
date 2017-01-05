FROM node:alpine

ADD package.json package.json
RUN npm install && npm run clean

ADD . .

LABEL databox.type="app"

VOLUME ["/database"]

EXPOSE 8080

CMD ["npm","start"]
