FROM node:18-alpine

WORKDIR /app

COPY package.js .
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
