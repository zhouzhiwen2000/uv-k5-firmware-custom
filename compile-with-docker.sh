#!/bin/sh
rm -rf compiled
make clean
docker build -t uvk5 .
docker run --rm -v ${PWD}/compiled-firmware:/app/compiled-firmware uvk5 /bin/bash -c "cd /app &&rm -rf compiled&& make clean && make build && cp *.bin compiled-firmware/"
