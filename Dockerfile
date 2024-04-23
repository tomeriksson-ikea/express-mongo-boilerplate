FROM node:20-alpine
WORKDIR /usr/app


COPY package.json package-lock.json ./
RUN npm install --quiet

COPY . .
RUN npm run build

CMD [ "npm", "run", "dev"]
