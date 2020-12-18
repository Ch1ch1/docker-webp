FROM alpine
RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*
COPY convert.sh /bin/convert.sh
RUN chmod +x /bin/convert.sh
CMD   ["/bin/convert.sh"]
