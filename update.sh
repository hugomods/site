#!/bin/bash
sites=(
  blog bootstrap common decap-cms docker echarts home hugopress icons images kroki pwa search seo shortcodes
)
for site in ${sites[@]}; do
  echo "Updating modules for site: $site"
  docker compose run $site hugo mod get -u
  docker compose run $site hugo mod tidy
done
