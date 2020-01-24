#!/bin/bash
docker login registry.apps.ocp.ibsbg.bg
docker build . --platform=linux/ppc64le --no-cache -t docrec/tesseract-ppc64le:1.0.0 -f Dockerfile-PPC
docker tag docrec/tesseract-ppc64le:1.0.0 registry.apps.ocp.ibsbg.bg/docrec/tesseract-ppc64le
docker push registry.apps.ocp.ibsbg.bg/docrec/tesseract-ppc64le
