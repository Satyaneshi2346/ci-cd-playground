# Dockerfile

FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy dependencies files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose port (optional for future use)
EXPOSE 3000

# Default command
CMD ["node", "index.js"]

