FROM alpine

RUN apk add --update nodejs npm

COPY ./js .

RUN npm install

ENTRYPOINT ["node", "http.js"]
