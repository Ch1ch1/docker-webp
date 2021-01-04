FROM alpine:3.12
RUN apk --no-cache update \
    && apk upgrade -U \
    && apk --no-cache add bash ca-certificates ffmpeg libwebp libwebp-tools \
    && rm -rf /var/cache/*
COPY convert.sh /
RUN chmod +x /convert.sh

ENTRYPOINT ["/convert.sh"]
CMD ["sh"]
