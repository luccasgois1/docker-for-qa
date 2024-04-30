FROM nginx
LABEL MAINTAINTER="luccasgois1@gmail.com"

RUN apt update && apt install -y vim

COPY ./app /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]