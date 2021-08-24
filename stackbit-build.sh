#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/61256d2fbb5b5700bdcaf7ea

# build site
jekyll build

echo "stackbit-build.sh: finished build"
