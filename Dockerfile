FROM node:12-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production
COPY . .

ENV NODE_ENV production

EXPOSE 8080
CMD [ "node", "bin/www" ]