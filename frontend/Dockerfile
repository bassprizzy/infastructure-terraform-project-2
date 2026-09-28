# STAGE1: Build the backend application
# Use an official Python image as the base image
FROM node:22-alpine AS builder
#set a working directory in the container
WORKDIR /app
# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./
# Install the dependencies
RUN npm ci
ARG VITE_API_URL=/api
ENV VITE_API_URL=${VITE_API_URL}
# Copy the rest of the application code to the working directory
COPY . .
# Build the application
RUN npm run build
# STAGE2: Serve the backend application
# Use an official Nginx image as the base image for the final stage
FROM nginx:alpine AS runtime
# Copy the built application from the builder stage to the Nginx html directory 
COPY --from=builder /app/dist /usr/share/nginx/html
# Copy the Nginx configuration file to the Nginx configuration directory
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=5s \ 
  CMD wget --quiet --tries=1 --spider http://127.0.0.1/healthz || exit 1
