#!/bin/bash
set -e
echo "Starting app ..."

if command -v docker-compose >/dev/null 2>&1; then
  docker-compose up -d
else
  docker compose up -d
fi

echo "The app is available at: http://localhost:8080"
