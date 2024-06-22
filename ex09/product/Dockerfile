FROM openjdk:11-jdk-slim

WORKDIR /app

# COPY만 docker-compose 파일의 위치를 기반으로 작동함
COPY . .

# 개행문자 오류 해결 [unix와 window 시스템 차이]
RUN sed -i 's/\r$//' gradlew

# docker compose가 아닌 개별 배포 시 활성화
# docker compose로 배포 시 비활성화
# * 수정 시 이미지 재생성해야함
ENV SPRING_DATASOURCE_URL=jdbc:mysql://db:3306/metadb?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false&allowPublicKeyRetrieval=true
ENV SPRING_DATASOURCE_DRIVER=com.mysql.cj.jdbc.Driver
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=root1234

# RUN은 현재 파일을 위치를 기반으로 작동함
RUN chmod +x ./gradlew
RUN ./gradlew clean build

ENV JAR_PATH=/app/build/libs
RUN mv ${JAR_PATH}/*.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]

# docker run -d --name ex09-backend-1 --net ex09_network --net-alias backend -p 8081:8080 ex09-backend