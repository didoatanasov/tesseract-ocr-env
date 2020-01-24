#!/bin/bash
docker login registry.apps.ocp.ibsbg.bg
docker build . --no-cache  -t docrec/tesseract:1.0.0
docker tag docrec/tesseract:1.0.0 registry.apps.ocp.ibsbg.bg/docrec/tesseract
docker push registry.apps.ocp.ibsbg.bg/docrec/tesseract
