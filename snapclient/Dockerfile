ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

#Install snapcast
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted snapcast-client=0.24.0-r0 bash alsa-plugins-pulse 
#RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories && apk add --no-cache snapcast-client bash

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
