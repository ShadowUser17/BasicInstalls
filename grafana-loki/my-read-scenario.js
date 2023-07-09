import http from 'k6/http';
import { check, sleep } from 'k6';

const BASE_URL = "http://grafana-loki.k3s";

export const options = {
    "thresholds": {
        'http_req_failed': [{"threshold": 'rate<=0.01', "abortOnFail": true}]
    },
    "scenarios": {
        "testing": {
            "executor": "constant-vus",
            "exec": "reader",
            "vus": 30,
            "duration": "180s"
        }
    }
};

export function reader() {
    const pod_name = "test-app-" + randomInt(1, 9).toString();
    const payload = "%7Bcontainer%3D%22app%22%2C%20pod%3D%22" + pod_name + "%22%2Cnamespace%3D%22testing%22%7D"

    const res = http.get(BASE_URL + "/loki/api/v1/query_range?query=" + payload);
    check(res, {
        "is_successfully": (res) => {
            let status = res.status === 200;
            if(!status) console.log(res.status, res.body);
            return status;
        }
    });

    sleep(1);
}

function randomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}
