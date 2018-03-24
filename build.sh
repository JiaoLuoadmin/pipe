#!/bin/bash

dep ensure
go build -ldflags '-s -w' -v
cd console && yarn install && yarn run build
cd ../theme && yarn install && yarn global add gulp && gulp

echo 'build pipe done'
