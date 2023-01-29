FROM nginx as server
COPY Moderna /usr/share/nginx/html

FROM nginx as proxy
COPY proxy.conf /etc/nginx/conf.d/default.conf
