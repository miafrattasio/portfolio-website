# Start from the base NGINX image
FROM nginx:alpine

# Copy the custom NGINX configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove the default NGINX HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy all your static website files (HTML, CSS, Images, etc.) 
# into the NGINX web root directory
COPY . /usr/share/nginx/html

# NGINX runs on port 8080 (as defined in nginx.conf)
EXPOSE 8080

# Command to run NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]