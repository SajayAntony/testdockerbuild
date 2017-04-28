#!/bin/sh
path=$(dirname $0)
docker build -t sampleapp $path
