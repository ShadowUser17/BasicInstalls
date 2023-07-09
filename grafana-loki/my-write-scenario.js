import http from 'k6/http';
import { check, sleep } from 'k6';

const BASE_URL = "http://grafana-loki.k3s";

export const options = {
    "thresholds": {
        'http_req_failed': [{"threshold": 'rate<=0.01', "abortOnFail": true}]
    },
    "scenarios": {
        "testing": {
            "executor": "ramping-vus",
            "exec": "writer",
            "startVUs": 30,
            "gracefulRampDown": "1m",
            "stages": [
                {"duration": "2m", "target": 50},
                {"duration": "2m", "target": 70},
                {"duration": "2m", "target": 90}
            ]
        }
    }
};

export function writer() {
    const params = {
        "headers": {
          "Content-Type": "application/json"
        }
    };

    const log_ts_ns = Date.now().valueOf() * 1000000;
    const log_value = genMessage();
    const pod_name = "test-app-" + randomInt(1, 9).toString();

    const payload = JSON.stringify({
        "streams": [
          {
            "stream": {
              "container": "app",
              "pod": pod_name,
              "namespace": "testing"
            },
            "values": [
                [log_ts_ns.toString(), log_value]
            ]
          }
        ]
    });

    const res = http.post(BASE_URL + "/loki/api/v1/push", payload, params);
    check(res, {
        "is_successfully": (res) => {
            let status = res.status === 204;
            if(!status) console.log(res.status, res.body);
            return status;
        }
    });

    sleep(1);
}

function genMessage() {
    const levels = ["INFO", "WARN", "ERROR"];
    const level_name = levels[randomInt(0, levels.length)];

    return JSON.stringify({
        "host": "vagrant-test",
        "container_name": "nginx-test_nginx_1",
        "image": "docker.io/nginx:1.25.1",
        "context": "default",
        "label": {
            "com.docker.compose.project.config_files": "docker-compose.yaml",
            "com.docker.compose.project.working_dir": "/home/vagrant/nginx-test",
            "com.docker.compose.project": "nginx-test",
            "com.docker.compose.container-number": "1",
            "com.docker.compose.service": "nginx",
            "com.docker.compose.version": "1.29.2"
        },
        "message": "Status: 200 OK, HTTP method: GET, URI: /metrics, User agent: python3/urllib",
        "level": level_name,
        "severity": level_name,
        "stream": "stdout",
        "source_type": "docker"
    });
}

function randomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}
