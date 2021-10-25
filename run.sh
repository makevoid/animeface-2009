#!/usr/bin/env bash

set -xeuo pipefail

docker-compose build

docker-compose up
