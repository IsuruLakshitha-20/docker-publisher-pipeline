FROM node:24-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev || echo "No dependencies to install!!
COPY . .
CMD ["npm","start"]    