FROM nginx

RUN rm /etc/nginx/conf.d/*
COPY nginx.conf.template /etc/nginx/templates/
COPY headers.conf /etc/nginx/includes/
