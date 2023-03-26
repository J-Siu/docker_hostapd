FROM alpine:edge

LABEL version="2.10-r5"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="hostapd"
LABEL usage="https://github.com/J-Siu/docker_hostapd/blob/master/README.md"
LABEL description="Docker - hostapd"

RUN apk --no-cache add hostapd=2.10-r5

COPY docker-compose.yml env /

CMD ["hostapd","/hostapd.conf"]
