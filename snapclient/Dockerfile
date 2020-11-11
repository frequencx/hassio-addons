ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

#Install snapcast
RUN cat > /etc/apk/repositories << EOF; $(echo)
    @edge http://dl-cdn.alpinelinux.org/alpine/edge/main
    @edgecommunityhttp://dl-cdn.alpinelinux.org/alpine/edge/community
    EOF
    
    apk update
    apk add --no-cache snapcast@edgecommunity bash alsa-plugins-pulse

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
