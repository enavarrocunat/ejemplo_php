#!/bin/bash
rm -rf ./dist/*

mkdir -p ./dist/php
mkdir -p ./dist/web

cp -r ./src/php/* ./dist/php
cp -r ./src/web/* ./dist/web