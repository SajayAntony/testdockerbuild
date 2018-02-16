#!/bin/sh
if [ -z  "$URL" ]; then
    echo '$URL' not defined
    exit 1
fi
echo Querying $URL
curl $URL

