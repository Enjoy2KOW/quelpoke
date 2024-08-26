FROM debian
RUN apt install -y nginx
COPY index.html /var/lib/nginx/html
ENTRYPOINT ["nginx -f"]
