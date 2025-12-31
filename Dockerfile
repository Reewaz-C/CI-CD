FROM node:18-apline
WORKDIR /app
COPY package-lock.json .
RUN npm ci
COPY . .
EXPOSE 3000
CMD ["npm", "start"]