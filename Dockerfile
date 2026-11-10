FROM alpine:edge
ARG APP="hostapd"
ARG VER="2.12-r1"
ARG USR="https://github.com/J-Siu"
LABEL version=${VER}
LABEL maintainers="[John Sing Dao Siu](${USR})"
LABEL name=${APP}
LABEL usage="${USR}/docker_${APP}/blob/master/README.md"
LABEL description="Docker - hostapd"
LABEL blog="[Linux IPv6 Router How To](//johnsiu.com/blog/linux-router/)"

COPY docker-compose.yml env /
RUN apk --no-cache add \
${APP}=${VER} \
ca-certificates \
ca-certificates-bundle \
tzdata

CMD ["hostapd","/hostapd.conf"]
