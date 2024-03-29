# Use nginx alpine for a lightweight image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your static website files into the container
COPY . .

# Expose port 80 to access the nginx server
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
#Build3 test from VS
#Webhook change