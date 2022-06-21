FROM node:12.18-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY . .
RUN yarn install --production
CMD node -Dserver.port=$PORT src/index.js