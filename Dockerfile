FROM alpine
RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*
ADD convert.sh /
RUN chmod +x /convert.sh
CMD   ["/convert.sh"]
