#!/bin/bash

VERSION=$1

jx step create pr regex --regex "nuxeo/nginx-centos7:(.*)$" \
  --version ${VERSION} \
  --files server/Dockerfile \
  --repo https://github.com/nuxeo/nuxeo-web-ui.git
