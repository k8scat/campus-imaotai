FROM node:12 AS build-web
WORKDIR /app
COPY ./vue_campus_admin .
RUN npm i && npm run build:prod

FROM nginx:1.23.4
LABEL MAINTAINER="K8sCat <k8scat@gmail.com>"
ENV TZ=Asia/Shanghai
WORKDIR /app
EXPOSE 80 443
COPY --from=build-web /app/dist/ .
