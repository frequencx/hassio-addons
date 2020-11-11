ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

#Install snapcast
RUN 
apk add --no-cache bash alsa-plugins-pulse
apk add --no-cache --repository=http://208.74.142.61/alpine/edge/community/ snapcast

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
