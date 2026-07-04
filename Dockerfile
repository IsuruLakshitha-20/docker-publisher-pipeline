FROM node:24-alpine
WORKDIR /app

# Copy the package configuration file
COPY package.json ./

# Install standard workspace packages
RUN npm install

# Copy the remaining project files
COPY . .

# Set the default container execution script
CMD ["npm", "start"]