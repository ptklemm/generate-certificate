FROM nginx:alpine
# Add your nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /var/www/html/index.html
# Expose port
EXPOSE 80
EXPOSE 443
# Start nginx
CMD ["nginx", "-g", "daemon off;"]