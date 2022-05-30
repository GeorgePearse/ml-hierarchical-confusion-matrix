FROM node:16-alpine

ENV NODE_ENV=development

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 8080
ENV PORT 8080

CMD [ "yarn", "start" , "--host"]