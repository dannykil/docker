FROM nginx

COPY webapp /usr/share/nginx/html
# COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]

# docker build -t server1 ./server1
# docker build -t server2 ./server2

# docker run -d -p 8070:80 server1
# docker run -d -p 8071:80 server2