#!/bin/bash

docker-compose -f docker-compose.yml up -d postgresdb-university traefik-university
  
until PGPASSWORD="postgres" docker exec -it postgresdb-university pg_isready; do
  echo "Postgres is not ready - waiting"
  sleep 2
done
  
echo "Postgres is ready!"

docker-compose -f docker-compose.yml up -d pgadmin-university
