ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

#Install snapcast from edge branch of alpinelinux
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ snapcast bash alsa-plugins-pulse

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
