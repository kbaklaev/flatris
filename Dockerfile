FROM node

RUN mkdir /app
WORKDIR /app

COPY package.json /app
RUN yarn install

COPY . /app
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000