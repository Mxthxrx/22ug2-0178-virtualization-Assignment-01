#!/bin/bash
set -e
echo "Preparing app ..."

# Create network and volume if not present
docker network create appnet 2>/dev/null || true
docker volume create user_data 2>/dev/null || true

# Build images (supports Compose v1 or v2)
if command -v docker-compose >/dev/null 2>&1; then
  docker-compose build
else
  docker compose build
fi
