#!/bin/bash
set -e
echo "Removing app ..."

if command -v docker-compose >/dev/null 2>&1; then
  docker-compose down -v --rmi all --remove-orphans || true
else
  docker compose down -v --rmi all --remove-orphans || true
fi

docker network rm appnet 2>/dev/null || true
docker volume rm user_data 2>/dev/null || true
