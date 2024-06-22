FROM mysql:8.0

# 카피가 되는 순간 쿼리가 자동실행됨
# chmod 755 init.sql (강의자료에 없는 내용)
# docker system prune (컨테이너 및 네트워크 정리)
COPY init.sql /docker-entrypoint-initdb.d

ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=metadb

# 누구나 접근가능한 권한
ENV MYSQL_HOST=% 

CMD ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]

# docker network 및 alias 지정해야 compose로 올라갔던 네트워크에 다시 올릴 수 있음
# docker run -d --name ex09-db-1 --net ex09_network --net-alias db -p 33060:3306 ex09-db