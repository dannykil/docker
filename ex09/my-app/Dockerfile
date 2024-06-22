FROM node:alpine as build
WORKDIR /app
COPY package.json /app
# --silent : 터미널에 보이는 로그를 최소화
RUN npm install --silent
COPY . /app
RUN npm run build

FROM nginx

# --from=bulid : 위에서 생성한 build 이미지
# 위에서 생성한 build 이미지의 /app/build를 /usr/share/nginx/html에 복사
COPY --from=build  /app/build /usr/share/nginx/html 
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]