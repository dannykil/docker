# docker run --name some-nginx -d -p 8070:80 nginx

# 에러메시지 발생 >>> docker: Error response from daemon: pull access denied for some-content-nginx, repository does not exist or may require 'docker login': denied: requested access to the resource is denied.
# 해결방법 >>> docker login

FROM nginx

COPY webapp /usr/share/nginx/html
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# /etc/nginx 내 mime.types 내용은 공부해볼 것(알아야 함)

# COPY conf/nginx.conf /etc/nginx/nginx.conf
# /etc/nginx/conf.d/*.conf <<< 자세한 다른 설정들은 여기에 있음 

ENTRYPOINT ["nginx", "-g", "daemon off;"]

# docker build -t nginx-server .
# docker run -d -p 8070:80 nginx-server 
# 혹시 모르니 취상위 경로에서 해당 파일명을 가진 다른 파일이 있는지 체크할 것
# find / -name index.html
