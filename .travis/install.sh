#!/bin/bash

# stop script if single command fails
set -ev

# run bundle install when not on COVERITY_SCAN_BRANCH
if [ "${TRAVIS_BRANCH}" != "${COVERITY_SCAN_BRANCH}" ]; then
  echo "On branch '${TRAVIS_BRANCH}'\nExecuting bundle install"
  bundle install --jobs=3 --retry=3 --without production development
else
  exit 0
fi
