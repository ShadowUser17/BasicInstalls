#!/bin/bash

[[ "${UID}" -ne "0" ]] && {
    echo -e "You must be root!"; exit 1
}

PROM_USER="prometheus"
PROM_VERSION="0.22.0"
PROM_URL="https://github.com/prometheus/blackbox_exporter/releases/download/v${PROM_VERSION}"
PROM_FILE="blackbox_exporter-${PROM_VERSION}.linux-amd64.tar.gz"
PROM_BASE="/var/lib"
PROM_CONF="/etc/blackbox_exporter"
PROM_BIN="/usr/local/bin"
PROM_DIR="${PROM_BASE}/${PROM_USER}"


function create_user {
    getent passwd "${PROM_USER}" > /dev/null || \
    useradd --system -s '/sbin/nologin' -b "${PROM_BASE}" -m "${PROM_USER}"
}

function download_file {
    curl -L "${PROM_URL}/${PROM_FILE}" -o "${PROM_DIR}/${PROM_FILE}"
    cd "${PROM_DIR}" && tar -xzf "${PROM_FILE}"
}

function setup_files {
    cd $(basename "${PROM_FILE}" '.tar.gz')
    cp './blackbox_exporter' "${PROM_BIN}/"

    mkdir -p "${PROM_CONF}"
    cp './blackbox.yml' "${PROM_CONF}/"
    chown -R "${PROM_USER}":"${PROM_USER}" "${PROM_CONF}"
}


# set -x
create_user && download_file && setup_files
# set +x
