# Use official Busybox image with uClibc
FROM busybox:uclibc

# Create a directory for the website
WORKDIR /app

# Copy the www subdirectory into the container
COPY www/ /app/www/

# Expose port 3000
EXPOSE 3000

# Use busybox httpd to serve the website
# -f: don't daemonize
# -p 3000: listen on port 3000
# -h /app/www: set document root to www directory
CMD ["httpd", "-v", "-f", "-p", "3000", "-h", "/app/www"]
