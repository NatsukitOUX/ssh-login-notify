#!/bin/bash
# SSH login notification script
# Place in /usr/local/bin and make executable

USER="${PAM_USER}"
IP="${PAM_RHOST}"
HOST="$(hostname)"
DATE="$(date)"
RECIPIENT="your-email@example.com"
SUBJECT="SSH Login on ${HOST}"

BODY="
A new SSH login was successfully established.

User:          ${USER}
User IP Host:  ${IP}
Date:          ${DATE}
Server:        ${HOST}
"

# Send email on open session
if [ "${PAM_TYPE}" = "open_session" ]; then
    echo "${BODY}" | mail -s "${SUBJECT}" "${RECIPIENT}"
fi

exit 