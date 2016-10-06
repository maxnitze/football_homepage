#!/bin/bash

# stop script if single command fails
set -ev

# download certificate for scan.coverity.com if on COVERITY_SCAN_BRANCH
if [ "${TRAVIS_BRANCH}" = "${COVERITY_SCAN_BRANCH}" ] && [ "${TRAVIS_JOB_NUMBER##*.}" = "1" ]; then
  echo -e "On branch \"${TRAVIS_BRANCH}\" and job 1\nDownloading certificate fir scan.coverity.com"
  echo -n | openssl s_client -connect scan.coverity.com:443 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | sudo tee -a /etc/ssl/certs/ca-
# break here if on COVERITY_SCAN_BRANCH but job number is not 1
elif [ "${TRAVIS_BRANCH}" = "${COVERITY_SCAN_BRANCH}" ]; then
  echo -e "On branch \"${TRAVIS_BRANCH}\" but not job 1\nExiting..."
  exit 0
fi
