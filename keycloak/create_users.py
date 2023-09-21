#!/usr/bin/env python3
import sys
import csv
import json
import time
from pprint import pprint
from traceback import print_exc
from urllib import request
from urllib import parse as urllib


SERVER_ADDR   = "http://keycloak.docker/auth"
SERVER_USER   = "admin"
SERVER_PASSWD = "admin"
SERVER_TOKEN  = ""
USER_PREFIX   = "test"
USER_FILE     = "./users.csv"
USER_START    = 200
USER_COUNT    = 10
USER_PASSWD   = "testing"
USER_REALM    = "Testing"


def get_token() -> dict:
    data = urllib.urlencode({
        "client_id" : "admin-cli",
        "username"  : SERVER_USER,
        "password"  : SERVER_PASSWD,
        "grant_type": "password"
    })

    req = request.Request(
        url=urllib.urljoin(SERVER_ADDR, "/auth/realms/master/protocol/openid-connect/token"),
        headers={"Content-Type": "application/x-www-form-urlencoded"},
        data=data.encode(),
        method="POST"
    )

    with request.urlopen(req) as resp:
        return json.loads(resp.read())


def refresh_token(token: dict) -> dict:
    data = urllib.urlencode({
        "client_id"    : "admin-cli",
        "refresh_token": token.get("refresh_token", ""),
        "grant_type"   : "refresh_token"
    })

    req = request.Request(
        url=urllib.urljoin(SERVER_ADDR, "/auth/realms/master/protocol/openid-connect/token"),
        headers={
            "Authorization": "bearer {}".format(token.get("access_token", "")),
            "Content-Type": "application/x-www-form-urlencoded"
        },
        data=data.encode(),
        method="POST"
    )

    with request.urlopen(req) as resp:
        return json.loads(resp.read())


def get_users(access_token: str, query: str) -> list:
    query = urllib.urlencode({"max": USER_COUNT, "search": query})

    req = request.Request(
        url=urllib.urljoin(SERVER_ADDR, "/auth/admin/realms/{}/users?{}".format(USER_REALM, query)),
        headers={"Authorization": "bearer {}".format(access_token)},
        method="GET"
    )

    with request.urlopen(req) as resp:
        return json.loads(resp.read())


def create_user(access_token: str, user_attributes: dict) -> int:
    req = request.Request(
        url=urllib.urljoin(SERVER_ADDR, "/auth/admin/realms/{}/users".format(USER_REALM)),
        headers={
            "Authorization": "bearer {}".format(access_token),
            "Content-Type": "application/json"
        },
        data=json.dumps(user_attributes).encode(),
        method="POST"
    )

    with request.urlopen(req) as resp:
        return resp.status


def set_user_password(access_token: str, user_id: str, user_passwd: str) -> int:
    data = {"type": "password", "value": user_passwd, "temporary": "false"}

    req = request.Request(
        url=urllib.urljoin(SERVER_ADDR, "/auth/admin/realms/{}/users/{}/reset-password".format(USER_REALM, user_id)),
        headers={
            "Authorization": "bearer {}".format(access_token),
            "Content-Type": "application/json"
        },
        data=json.dumps(data).encode(),
        method="PUT"
    )

    with request.urlopen(req) as resp:
        return resp.status


def delete_user(access_token: str, user_id: str) -> int:
    req = request.Request(
        url=urllib.urljoin(SERVER_ADDR, "/auth/admin/realms/{}/users/{}".format(USER_REALM, user_id)),
        headers={"Authorization": "bearer {}".format(access_token)},
        method="DELETE"
    )

    with request.urlopen(req) as resp:
        return resp.status


def dump_users(file: str, data: dict) -> None:
    with open(file, "w") as fd:
        writer = csv.writer(fd, quoting=csv.QUOTE_MINIMAL)
        for key in data:
            item = (key, data[key]["password"], data[key]["role"])
            writer.writerow(item)


try:
    user_items = dict()
    SERVER_TOKEN = get_token()

    for num in range(USER_START, (USER_START + USER_COUNT)):
        user_name = "{}-{}".format(USER_PREFIX, num)
        user_email = "{}@localhost".format(user_name)
        user_data = {
            "username"     : user_name,
            "email"        : user_email,
            "firstName"    : user_name,
            "lastName"     : "-",
            "enabled"      : "true",
            "emailVerified": "true"
        }

        user_info = get_users(SERVER_TOKEN.get("access_token", ""), user_data["username"])
        if not user_info:
            create_user(SERVER_TOKEN.get("access_token", ""), user_data)
            user_info = get_users(SERVER_TOKEN.get("access_token", ""), user_data["username"])
            set_user_password(SERVER_TOKEN.get("access_token", ""), user_info[0]["id"], USER_PASSWD)
            pprint(user_info)

        if num % 5 == 1:
            SERVER_TOKEN = refresh_token(SERVER_TOKEN)
            time.sleep(5)

except Exception:
    print_exc()
    sys.exit(1)
