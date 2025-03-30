# Stage 1: Build และ Test
FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# รันเทสต์ด้วย Jest
RUN npm test

RUN npm run build
