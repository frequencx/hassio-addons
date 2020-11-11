FROM alpine:edge

# Add env
ENV LANG C.UTF-8

#Install snapcast from edge branch of alpinelinux
RUN apk add --no-cache snapcast bash alsa-plugins-pulse

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
