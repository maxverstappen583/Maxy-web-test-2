# Dockerfile — lightweight static site using nginx
FROM nginx:alpine

# remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# copy files
COPY index.html /usr/share/nginx/html/index.html
COPY galaxy.jpeg /usr/share/nginx/html/galaxy.jpeg

# expose port 80
EXPOSE 80

# run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
