#!/bin/bash

docker container stop traefik-university postgresdb-university pgadmin-university

docker container stop docker-compose_traefik_1 postgresdb1 docker-compose_pgadmin_1