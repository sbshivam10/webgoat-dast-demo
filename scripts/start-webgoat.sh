#!/usr/bin/env bash
set -e

echo "Stopping old WebGoat container if present..."
docker stop webgoat || true
docker rm webgoat || true

echo "Starting WebGoat..."
docker run -d \
  --name webgoat \
  -p 127.0.0.1:8080:8080 \
  -p 127.0.0.1:9090:9090 \
  webgoat/webgoat

echo "WebGoat started."
echo "URL: http://127.0.0.1:8080/WebGoat/login"
