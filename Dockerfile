FROM alpine
RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*
ADD convert.sh /bin/
RUN chmod +x /bin/convert.sh
CMD   ["/bin/convert.sh"]
