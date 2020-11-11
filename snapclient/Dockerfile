ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

#Install snapcast
RUN apk add --no-cache bash alsa-plugins-pulse
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted snapcast=0.22.0-r0
    
 
# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
