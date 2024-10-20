#!/bin/bash
docker compose run base sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run blog sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run bootstrap sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run decap-cms sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run docker sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run echarts sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run home sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run hugopress sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run icons sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run images sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run kroki sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run pwa sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run search sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run seo sh -c "hugo mod get -u && hugo mod tidy" & \
docker compose run shortcodes sh -c "hugo mod get -u && hugo mod tidy"