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

# docker compose up -d 로 인해 구성된 네트워크에 다시 넣으면서 컨테이너 올리는 명령어
# docker network 및 alias 지정해야 compose로 올라갔던 네트워크에 다시 올릴 수 있음
# *** --net을 제외하고 --net-alias만 하면 컨테이너 내 네트워크 정보에 alias가 추가되지 않음
# 컨테이너 재부팅 안해도 정상이면 데이터 출력됨
# docker run -d --name ex09-db-1 --net ex09_network --net-alias db -p 33060:3306 ex09-db

# 1) 컨테이너 삭제 후 재빌드v
# 2) 이미지까지 삭제 후 다운로드 미 재빌드
