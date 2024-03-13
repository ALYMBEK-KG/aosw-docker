#!/bin/bash
b=${1:-master}
m=${2:-dev}

docker compose down

if [ ! -d open-suite-webapp ]; then
  git clone -b $b https://github.com/axelor/open-suite-webapp.git
  cp .env.example .env
  cd open-suite-webapp
  sed -e "s|git@github.com:|https://github.com/|" -i .gitmodules
  git submodule update --init --recursive
  git submodule foreach git checkout $b
  cd ..
fi

if [ $m == "prod" ]; then
  docker compose up -d
else
  docker compose up
fi
