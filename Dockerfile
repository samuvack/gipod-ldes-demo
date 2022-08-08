FROM node:18

COPY / /app
WORKDIR /app

RUN npm ci
RUN npm run build

CMD ["node", "bin/cli-runner.js"]