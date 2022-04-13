#!/usr/bin/env bash

BIN_DIR=$(cat .bin_dir)

export PATH="${BIN_DIR}:${PATH}"

HOST=$(cat .outputs | jq -r '.host')
PORT=$(cat .outputs | jq -r '.port')
DATABASE_NAME=$(cat .outputs | jq -r '.database_name')
USERNAME=$(cat .outputs | jq -r '.username')
PASSWORD=$(cat .outputs | jq -r '.password')

if [[ "${HOST}" != "host" ]]; then
  echo "Host doesn't match: ${HOST}" >&2
  exit 1
fi

if [[ "${PORT}" != "10000" ]]; then
  echo "Port doesn't match: ${PORT}" >&2
  exit 1
fi

if [[ "${DATABASE_NAME}" != "db_name" ]]; then
  echo "Database name doesn't match: ${DATABASE_NAME}" >&2
  exit 1
fi

if [[ "${USERNAME}" != "myusername" ]]; then
  echo "Username doesn't match: ${USERNAME}" >&2
  exit 1
fi

if [[ "${PASSWORD}" != "mypassword" ]]; then
  echo "Password doesn't match: ${PASSWORD}" >&2
  exit 1
fi
