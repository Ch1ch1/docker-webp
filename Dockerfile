FROM alpine
RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*
