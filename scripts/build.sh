#!/bin/bash
rm -rf ../dist/*

mkdir -p ../dist/php
mkdir -p ../dist/web

sass ../src/php/sass/main.scss ../src/php/css/estilo.css

cp -r ../src/php/* ../dist/php
cp -r ../src/web/* ../dist/web

docker container run -d --name quique_apache --hostname quique_apache -v /opt/quique/ejemplo_php/dist/php:/var/www/html -e VIRTUAL_PORT=80  -e VIRTUAL_HOST=www.quique.pve2.fpmislata.com php:7.2-apache 

ESTE AUN NO ESTÁ ACABADO-V-
docker container run -d --name quique_mariadb --hostname quique_mariadb -e VIRTUAL_PORT=80  mariadb:10.1
