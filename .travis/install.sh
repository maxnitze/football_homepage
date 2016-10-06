#!/bin/bash

# stop script if single command fails
set -ev

if [ "${TRAVIS_BRANCH}" != "${COVERITY_SCAN_BRANCH}" ]; then
  # run bundle install when not on COVERITY_SCAN_BRANCH
  bundle install --jobs=3 --retry=3 --without production development
fi
