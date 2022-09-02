#!/bin/bash

[[ "${UID}" -ne "0" ]] && {
    echo -e "You must be root!"; exit 1
}

VECTOR_VERSION="0.24.1"
VECTOR_FILE="vector_${VECTOR_VERSION}-1_amd64.deb"
VECTOR_URL="https://github.com/vectordotdev/vector/releases/download/v${VECTOR_VERSION}/${VECTOR_FILE}"


[[ -f "${VECTOR_FILE}" ]] && rm -f "${VECTOR_FILE}"

curl -O -L "${VECTOR_URL}" && dpkg -i "${VECTOR_FILE}"
