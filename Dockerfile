FROM node

RUN mkdir /app
WORKDIR /app
COPY . /app
COPY package.json /app
COPY yarn.lock /app
WORKDIR /app

RUN yarn install
#RUN yarn test
RUN yarn build

CMD yarn start
EXPOSE 3000
