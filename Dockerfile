FROM node
WORKDIR /src/usr/app
COPY package-lock.json /src/usr/app/
COPY package.json /src/usr/app
RUN npm i -y
COPY --chown=node:node . /src/usr/app

FROM node
WORKDIR /src/usr/app
COPY --from=builder /src/usr/app .
USER node
EXPOSE 3000
CMD ["node", "index.js"]
