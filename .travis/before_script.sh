#!/bin/bash

# stop script if single command fails
set -ev

# create mysql database if on mysql job
if [ "${DB}" = "mysql" ]; then
  mysql -e 'create database my_app_test'
# create postgresql database if on mysql job
elsif [ "${DB}" = "postgresql" ]; then
  psql -c 'create database my_app_test' -U postgres
fi
