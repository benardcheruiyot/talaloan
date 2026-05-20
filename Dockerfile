# Dockerfile for backend service
# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY backend/package*.json ./

# Install dependencies
RUN npm ci --omit=dev

# Copy backend source code
COPY backend/. ./

# Expose port (default 5000)
EXPOSE 5000

# Start the server
CMD ["npm", "start"]
