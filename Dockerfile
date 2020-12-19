FROM alpine:3.12
RUN apk update && \
    apk upgrade -U && \
    apk add bash ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*
COPY convert.sh /
RUN chmod +x /convert.sh

ENTRYPOINT ["/convert.sh"]
CMD ["sh"]
