#!/bin/bash

[[ "${UID}" -ne "0" ]] && {
    echo -e "You must be root!"; exit 1
}

CICD_USER="jenkins"
CICD_VERSION="2.361.4"
CICD_URL="https://get.jenkins.io/war-stable/${CICD_VERSION}/jenkins.war"
CICD_SRV_URL="https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/jenkins/jenkins.service"
CICD_FILE="jenkins.war"
CICD_BASE="/var/lib"
CICD_DIR="${CICD_BASE}/${CICD_USER}"


function create_user {
    useradd --system -s '/sbin/nologin' -b "${CICD_BASE}" -m "${CICD_USER}"
}

function download_file {
    curl -L "${CICD_URL}" -o "${CICD_DIR}/${CICD_FILE}"
}

function setup_deps {
    apt-get update
    apt-get install -y openjdk-11-jre-headless
    apt-get clean
}

function setup_service {
    curl -L "${CICD_SRV_URL}" -o "/etc/systemd/system/jenkins.service" && {
        systemctl daemon-reload
        systemctl enable jenkins.service
        systemctl start jenkins.service
    }
}

# set -x
create_user && download_file && setup_deps && setup_service
# set +x
