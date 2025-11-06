#!/usr/bin/env bash
# start-server.sh

cd /tmp/openlxp-xis/app
python3 manage.py waitdb 
python3 manage.py migrate  
python3 manage.py createcachetable 
python3 manage.py loaddata admin_theme_data.json 
python3 manage.py collectstatic --no-input
cd /tmp/
pwd 
./start-server.sh