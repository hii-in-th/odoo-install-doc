#!/bin/bash

export DOCKER_IMAGE=postgres:10
export SERVICE_NAME=nirun_database
export DATABASE_DATA=/data/db/nirun2

export POSTGRES_USER=nirun
export POSTGRES_PASSWORD=WKztnwB77XAE84YaKjJRBbvnXav334
export POSTGRES_DB=nirun

docker service scale ${SERVICE_NAME}=0
docker service rm ${SERVICE_NAME}
docker pull ${DOCKER_IMAGE}
docker service create --replicas 1 \
  --name ${SERVICE_NAME} \
  --mount type=bind,src=${DATABASE_DATA},dst=/var/lib/postgresql/data \
  --mount type=bind,src=/etc/hosts,dst=/etc/hosts,readonly \
  --publish published=21320,target=5432 \
  --env "POSTGRES_USER=${POSTGRES_USER}" \
  --env "POSTGRES_PASSWORD=${POSTGRES_PASSWORD}" \
  --env "POSTGRES_DB=${POSTGRES_DB}" \
  ${DOCKER_IMAGE}
