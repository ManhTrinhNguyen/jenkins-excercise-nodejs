FROM node:25.9-bookworm-slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./app /usr/src/app 
RUN chown -R node:node /usr/src/app
USER node
RUN npm install
CMD ["node", "server.js"] 
