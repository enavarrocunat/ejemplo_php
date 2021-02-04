#!/bin/bash

mkdir -p C:/xampp/htdocs/proyectoBase/
mkdir -p C:/xampp/php-servidor/proyectoBase/

rm -rf C:/xampp/htdocs/proyectoBase/*
cp -r ./dist/web/* C:/xampp/htdocs/proyectoBase

rm -rf C:/xampp/php-servidor/proyectoBase/*
cp -r ./dist/php/* C:/xampp/php-servidor/proyectoBase