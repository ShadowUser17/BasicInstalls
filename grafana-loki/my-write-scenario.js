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
            "gracefulRampDown": "1m",
            "startVUs": 100,
            "stages": [
                {"duration": "5m", "target": 150},
                {"duration": "5m", "target": 200}
            ]
        }
    }
};

export default function () {
    const params = {
        "headers": {
          "Content-Type": "application/json"
        }
    };

    const log_ts_ns = Date.now().valueOf() * 1000000;
    const log_value = '#'.repeat(4096);

    const payload = JSON.stringify({
        "streams": [
          {
            "stream": {
              "container": "app",
              "pod": "eks-test-app",
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
