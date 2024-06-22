FROM mysql

ENV MYSQL_USER=ssar
ENV MYSQL_PASSWORD=ssar1234
ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=ssardb

CMD ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]

# docker build -t mysql_image .
# docker run -d -p 3307:3306 --name mysql_container mysql_image
# workbench와 같이 툴을 사용해서 정상적으로 생성됐는지 확인해보자
# 환경변수 설정확인 
# 1) SQL편집기 : show variables like '%character%';
# 2) container 내 환경변수 확인 : echo $MYSQL_USER

# ***볼륨(중요!!!) 
# docker volume ls
# DB 컨테이너에서 사용하는 이유 : 데이터가 볼륨에 저장되어 있는데 컨테이너가 내려가면 삭제됨
# 해결방법 :
# 1) host시스템(OS)에 폴더를 만들어두고 해당 폴더를 DB 컨테이너와 연결
# docker run -d -v /Users/danny_mac/Documents/docker/ex05/mysql-volume:/var/lib/mysql -p 3307:3306 --name mysql_container mysql_image
# * 데이터가 호스트시스템에 저장되기 때문에 볼륨생성이 안됨
# 2) 이름이 있는 볼륨을 만들어서 사용 >>> 이름이 지정되면 컨테이너가 종료 및 삭제되도 없어지지 않는다. 왜? >>> 
# docker run -d -v mysql-volume:/var/lib/mysql -p 3307:3306 --name mysql_container mysql_image

# 볼륨 삭제
# 사용하지 않는 모든 볼륨 (컨테이너가없는 볼륨 포함)를 제거
# docker system prune

# 사용하지 않은 볼륨 조회
# docker volume ls -qf dangling=true

# 사용하지 않은 볼륨 삭제 vvv
# docker volume rm $(docker volume ls -qf dangling=true)

# 사용하지 않은 볼륨 조회 및 삭제
# docker volume ls -qf dangling=true | xargs -r docker volume rm