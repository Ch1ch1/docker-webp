FROM alpine
RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*
COPY convert.sh /convert.sh
CMD chmod +x /convert.sh
CMD ["/convert.sh"]
