#!/bin/bash

# stop script if single command fails
set -ev

# run commands if not on COVERITY_SCAN_BRANCH
if [ "${TRAVIS_BRANCH}" != "${COVERITY_BRANCH}" ]; then
  echo -e "On branch '${TRAVIS_BRANCH}' -- running tests"
  # create database for test environment
  RAILS_ENV=test bundle exec rake db:migrate --trace
  # prepare test database
  bundle exec rake db:test:prepare
  # run rspec and cucumber
  bundle exec rspec spec/
  bundle exec cucumber features/
fi

exit 0
