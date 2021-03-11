FROM node

RUN mkdir /express
COPY . /express/

WORKDIR /express
RUN rm -rf /express/node_modules
RUN npm install --production

EXPOSE 80

ENTRYPOINT ["npm","run","start"]