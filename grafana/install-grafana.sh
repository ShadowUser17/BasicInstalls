#!/bin/bash

[[ "${UID}" -ne "0" ]] && {
    echo -e "You must be root!"; exit 1
}

PKG_VERSION="9.5.7"
PKG_FILE="grafana-enterprise_${PKG_VERSION}_amd64.deb"
PKG_URL="https://dl.grafana.com/enterprise/release/${PKG_FILE}"

# Install Grafana...
apt-get install -y adduser libfontconfig1 && \
curl -L "${PKG_URL}" -o "${HOME}/${PKG_FILE}" && \
dpkg -i "${HOME}/${PKG_FILE}"

# Install data sources...
cp -v grafana-datasources/*.yml /etc/grafana/provisioning/datasources/ && \
chown root:grafana /etc/grafana/provisioning/datasources/*.yml && \
chmod 640 /etc/grafana/provisioning/datasources/*.yml
