# Docker image NGINX
FROM nginx:alpine

# Install bash package
RUN apk add --no-cache bash

# Copy index.html to the container
COPY ./src/index.html /usr/share/nginx/html/index.html

# Expose the port
EXPOSE 8080

# Start the server
CMD ["nginx", "-g", "daemon off;"]