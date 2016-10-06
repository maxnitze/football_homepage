#!/bin/bash

# stop script if single command fails
set -ev

# create mysql database if on mysql job
if [ "${DB}" = "mysql" ]; then
  echo -e "Creating mysql database"
  mysql -e 'create database my_app_test'
# create postgresql database if on mysql job
elif [ "${DB}" = "postgresql" ]; then
  echo -e "Creating postgresql database"
  psql -c 'create database my_app_test' -U postgres
else
  echo -e "No database initialized"
  exit 0
fi
