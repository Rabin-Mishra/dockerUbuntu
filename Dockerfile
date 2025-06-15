FROM ubuntu:22.04

# Making non interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install nginx
RUN apt-get update && apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create necessary directories
RUN mkdir -p /var/www/html

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]