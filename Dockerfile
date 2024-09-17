# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code to the container
COPY . .

# Install the dependencies
RUN npm install

# Build the Vue.js app
RUN npm run build

# Expose the port the app runs on
EXPOSE 16050

# Start the Vue.js app using the development server
CMD ["npm", "run", "serve"]
