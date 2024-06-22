# Image name:tag
FROM openjdk:11-jdk-slim

# Entry path when I enter the container using exec or attach
WORKDIR /app

# aws-v3-0.0.3.jar file in build folder of ex01 folder will be copied in /app/applicationjar of the container
# File name will be authmatically changed as I write code below
# We can also use 'ADD' and 'ADD' will be deployed with unzipping the file
COPY build/aws-v3-0.0.3.jar ./application.jar

# Something different with 'CMD' and will explain later
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=dev", "application.jar"]

# docker run -dit -p 8070:8081 java-server --server.port=5000 >> cannot approach
# docker run -dit -p 8070:5000 java-server --server.port=5000 >> can approach
# It looks like overwriting command (my opinion)
# Tutor said 'ENTRYPOINT is command and 'CMD' is option
# java -jar -Dspring.profiles.active=dev --server.port=8080
# 'java -ar -Dspring.profiles.active=dev' is command or default
# '--server.port=8080; is option or variable
CMD ["--server.port=3000"]

# Excuting command
# Build Dockerfile : docker build -t java-server .
# docker run -dit -p 8070:3000 java-server
