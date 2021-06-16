FROM nginx:latest
ADD . /usr/share/nginx/html
WORKDIR /etc/nginx/conf.d/
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
RUN apt-get update
RUN apt-get install nano
VOLUME ./nginx/default.conf:/etc/nginx/conf.d/default.conf