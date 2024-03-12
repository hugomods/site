#!/bin/bash
docker compose run base hugo mod get -u & \
docker compose run blog hugo mod get -u & \
docker compose run bootstrap hugo mod get -u & \
docker compose run common hugo mod get -u & \
docker compose run decap-cms hugo mod get -u & \
docker compose run docker hugo mod get -u & \
docker compose run echarts hugo mod get -u & \
docker compose run home hugo mod get -u & \
docker compose run hugopress hugo mod get -u & \
docker compose run icons hugo mod get -u & \
docker compose run images hugo mod get -u & \
docker compose run kroki hugo mod get -u & \
docker compose run pwa hugo mod get -u & \
docker compose run search hugo mod get -u & \
docker compose run seo hugo mod get -u & \
docker compose run shortcodes hugo mod get -u