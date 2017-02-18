#!/bin/bash

/etc/init.d/
/etc/init.d/postgresql start

pid=`pidof -s "/usr/bin/postmaster"`
if [ $pid ] && [ -f "/var/lib/pgsql/data/postmaster.pid" ]
then
  cat /var/lib/pgsql/pgstartup.log
  echo '---------------------------------------------------'
  tail -f /var/lib/pgsql/pgstartup.log
fi 
