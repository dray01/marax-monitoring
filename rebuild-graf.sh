#!/bin/bash

# Removine running containers
docker-compose down
# Delete
docker system prune -af
docker system prune --volumes -f
# rebuild new containers
docker-compose build --no-cache
# Run new containers
docker-compose up -d


