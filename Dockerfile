FROM nginx:latest
RUN mkdir -p /var/www/html
ENV NGINX_CONF /etc/nginx/conf.d/default.conf
COPY ./nginx.conf $NGINX_CONF
ADD ./site /var/www/html/site
EXPOSE 80
LABEL description="Esse é o meu projeto dockerfile-nginx"
