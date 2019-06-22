FROM mhart/alpine-node:8
RUN npm install -g yarn

RUN mkdir -p /var/www/html/nextjs
WORKDIR /var/www/html/nextjs

COPY . .

RUN yarn install
EXPOSE 3000

RUN yarn build
CMD [ "yarn", "dev" ]
