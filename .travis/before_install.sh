#!/bin/bash

# stop script if single command fails
set -ev

# download certificate for scan.coverity.com if on COVERITY_SCAN_BRANCH
if [ "${TRAVIS_BRANCH}" = "${COVERITY_BRANCH}" ]; then
  echo -e "On branch \"${TRAVIS_BRANCH}\" and job 1 -- downloading certificate for scan.coverity.com"
  echo -n | openssl s_client -connect scan.coverity.com:443 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | sudo tee -a /etc/ssl/certs/ca-
fi

exit 0
