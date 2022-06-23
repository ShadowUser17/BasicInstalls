#!/bin/bash
[[ $UID -ne 0 ]] && {
    echo -e "You must be root!"; exit 1
}

GPG_KEY="/etc/apt/keyrings/docker.gpg"
APT_REPO="/etc/apt/sources.list.d/docker.list"

OS_NAME=`awk -F= '$1~/^ID$/{print $2}' /etc/os-release`
OS_ARCH=`dpkg --print-architecture`
OS_RELEASE=`awk -F= '$1~/^VERSION_CODENAME$/{print $2}' /etc/os-release`


apt-get update && \
apt-get install -y \
ca-certificates gnupg curl lsb-release \
|| exit $?


[[ ! -f "${GPG_KEY}" ]] && \
mkdir -p "/etc/apt/keyrings" && \
curl -fsSL "https://download.docker.com/linux/debian/gpg" | gpg --dearmor -o "${GPG_KEY}"


[[ ! -f "${APT_REPO}" ]] && echo "deb [arch=${OS_ARCH} signed-by=${GPG_KEY}] \
https://download.docker.com/linux/debian ${OS_RELEASE} stable" > "${APT_REPO}"


[[ $? -eq 0 ]] && \
apt-get update && \
apt-get install -y \
docker-ce docker-ce-cli containerd.io docker-compose-plugin \
|| exit $?

apt-get clean
