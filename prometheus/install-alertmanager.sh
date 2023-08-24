#!/bin/bash

[[ "${UID}" -ne "0" ]] && {
    echo -e "You must be root!"; exit 1
}

ALTR_USER="alertmanager"
ALTR_VERSION="0.26.0"
ALTR_URL="https://github.com/prometheus/alertmanager/releases/download/v${ALTR_VERSION}"
ALTR_FILE="alertmanager-${ALTR_VERSION}.linux-amd64.tar.gz"
ALTR_BASE="/var/lib"
ALTR_CONF="/etc/alertmanager"
ALTR_BIN="/usr/local/bin"
ALTR_DIR="${ALTR_BASE}/${ALTR_USER}"


function create_user {
    getent passwd "${ALTR_USER}" > /dev/null || \
    useradd --system -s '/sbin/nologin' -b "${ALTR_BASE}" -m "${ALTR_USER}"
}

function download_file {
    curl -L "${ALTR_URL}/${ALTR_FILE}" -o "${ALTR_DIR}/${ALTR_FILE}"
    cd "${ALTR_DIR}" && tar -xzf "${ALTR_FILE}"
}

function setup_files {
    cd $(basename "${ALTR_FILE}" '.tar.gz')
    cp './alertmanager' "${ALTR_BIN}/"
    cp './amtool' "${ALTR_BIN}/"

    mkdir -p "${ALTR_CONF}"
    cp './alertmanager.yml' "${ALTR_CONF}/"
    chown -R "${ALTR_USER}":"${ALTR_USER}" "${ALTR_CONF}"
}


# set -x
create_user && download_file && setup_files
# set +x
