#!/bin/bash
docker compose run base hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run blog hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run bootstrap hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run common hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run decap-cms hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run docker hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run echarts hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run home hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run hugopress hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run icons hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run images hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run kroki hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run pwa hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run search hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run seo hugo mod get -u github.com/hbstack/base@v0.4.5 & \
docker compose run shortcodes hugo mod get -u github.com/hbstack/base@v0.4.5