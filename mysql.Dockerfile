FROM mysql:8.0.35

LABEL MAINTAINER="K8sCat <k8scat@gmail.com>"

COPY ./doc/sql/campus_imaotai-1.0.5.sql /docker-entrypoint-initdb.d/
