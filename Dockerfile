# Use an official NGINX image as a base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all website files from the current directory on your host to the container
COPY . .

# Expose port 80 to allow access to the web server
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
