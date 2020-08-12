FROM node

RUN mkdir /app
WORKDIR /app

COPY package.json /app
RUN yarn install

COPY . /app
# moved tests to CI
# RUN yarn test 
RUN yarn build

CMD yarn start

EXPOSE 3000