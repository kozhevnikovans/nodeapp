FROM node:12.18-alpine
ENV NODE_ENV=production
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
