# aosw-docker

Docker wrapper for [AOSW](https://github.com/axelor/open-suite-webapp)

## Getting started

Run commands below to run axelor app in docker container:

```
git clone https://github.com/ALYMBEK-KG/aosw-docker.git
cd aosw-docker
bash run.sh 7.2 dev
```

Wait a few minutes until the app starts, then refer to link:
http://localhost:8084/axelor-erp

Update translation files: `docker exec -it aosw-docker-app-1 ./gradlew i18n`\
Update web resource files: `docker exec -it aosw-docker-app-1 ./gradlew copyWebapp`
