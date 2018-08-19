#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

_gotpl() {
    if [[ -f "/etc/gotpl/$1" ]]; then
        gotpl "/etc/gotpl/$1" > "$2"
    fi
}

chmod 711 /var/spool/smtpd

_gotpl "/etc/gotpl/smtpd.conf.tmpl" > "/etc/smtpd/smtpd.conf"

if [[ -n "${RELAY_USER}" ]]; then
    if [[ -n "${RELAY_PASSWORD}" ]]; then
        echo "user ${RELAY_USER}:${RELAY_PASSWORD}" > /etc/smtpd/authinfo
    else
        echo "user ${RELAY_USER}" > /etc/smtpd/authinfo
    fi

    makemap /etc/smtpd/authinfo
fi

if [[ "${1}" == 'make' ]]; then
    exec "${@}" -f /usr/local/bin/actions.mk
else
    exec "${@}"
fi
