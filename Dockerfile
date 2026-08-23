FROM alpine:edge
ARG VERSION="2.12-r0"
LABEL version=${VERSION}
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="hostapd"
LABEL usage="https://github.com/J-Siu/docker_hostapd/blob/master/README.md"
LABEL description="Docker - hostapd"
LABEL blog="[Linux IPv6 Router How To](//johnsiu.com/blog/linux-router/)"

RUN apk --no-cache add hostapd=2.12-r0

COPY docker-compose.yml env /

CMD ["hostapd","/hostapd.conf"]
