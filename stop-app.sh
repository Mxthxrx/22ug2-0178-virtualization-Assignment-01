#!/bin/bash
set -e
echo "Stopping app ..."

if command -v docker-compose >/dev/null 2>&1; then
  docker-compose stop
else
  docker compose stop
fi
