FROM anaxexp/alpine:3.8-2.1.0

ARG OPENSMTPD_VER

ENV OPENSMTPD_VER="${OPENSMTPD_VER}" \
    OPENSMTPD_VER_ALPINE="${OPENSMTPD_VER}p1-r7"

RUN apk add --no-cache -t opensmtpd-rundeps \
        libressl \
        make \
        "opensmtpd=${OPENSMTPD_VER_ALPINE}"; \
    \
    mkdir -p /var/spool/smtpd

VOLUME /var/spool/smtpd
WORKDIR /var/spool/smtpd

EXPOSE 25

COPY bin /usr/local/bin
COPY templates /etc/gotpl/
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["smtpd", "-dv"]