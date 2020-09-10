FROM jasonrivers/nginx-rtmp

RUN apk add ffmpeg rtmpdump

COPY config/nginx.conf /opt/nginx/conf/
COPY html/* /tmp/

EXPOSE 1935
EXPOSE 80
