FROM node:24-alpine
WORKDIR /app
COPY package.json ./
COPY server ./server
COPY public ./public
ENV HOST=0.0.0.0 PORT=3000 DB_PATH=/data/shop.sqlite
VOLUME /data
EXPOSE 3000
CMD ["node", "server/index.mjs"]
