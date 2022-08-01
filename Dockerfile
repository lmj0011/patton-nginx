FROM nginx:1.23.1

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/default.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80 443 

ENV NODE_SERVICE_HOST=node

CMD ["nginx", "-g", "daemon off;"]
