#!/bin/bash
docker login registry.apps.ocp.ibsbg.bg
docker build . --platform=ppc64le -t docrec/tesseract-ppc64le:1.0.0
docker tag docrec/tesseract-ppc64le:1.0.0 registry.apps.ocp.ibsbg.bg/docrec/tesseract-ppc64le
docker push registry.apps.ocp.ibsbg.bg/docrec/tesseract-ppc64le
