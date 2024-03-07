#!/bin/bash
sites=(
  blog bootstrap common decap-cms docker home hugopress icons images pwa search seo shorcodes
)
for site in ${sites[@]}; do
  echo "Updating modules for site: $site"
  docker compose run --remove-orphans $site hugo mod get -u && hugo mod tidy
done
