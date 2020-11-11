ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

#Install snapcast
RUN apk add --no-cache --repository=http://208.74.142.61/alpine/edge/main/community snapcast bash alsa-plugins-pulse

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
