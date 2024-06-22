FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx

# WORKDIR /usr/share/nginx/html
WORKDIR /var/www/html

COPY ./webapp/index.html ./index.nginx-debian.html

ENTRYPOINT ["nginx", "-g", "daemon off;"]

# 중요!
# "daemon-off;"
# background가 아닌 foreground에서 실행해라, 왜??
# background로 nginx를 실행하면 컨테이너가 올라갔다가 바로 내려간다 >> 실행될게 없기 때문에

# 실행
# 1) build (Dockerfile이 있는 경로에서 실행)
# docker build -t nginx-server . 

# 2) run
# docker run -dit -p 8070:80 nginx-server