FROM node:14-alpine
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install
COPY . .
EXPOSE 4200
CMD ["pnpm", "start"]

