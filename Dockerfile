FROM node:22-alpine

WORKDIR /app

COPY package.json ./

RUN npm install --no-package-lock

COPY . .

RUN npm run build

RUN npm prune --production

EXPOSE 3000

CMD ["npm", "start"]