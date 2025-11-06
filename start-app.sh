#!/usr/bin/env bash
# start-server.sh

python3 manage.py waitdb 
python3 manage.py migrate  
python3 manage.py createcachetable 
python3 manage.py collectstatic --no-input --clean
python3 manage.py loaddata admin_theme_data.json 
python3 manage.py loaddata openlxp_notification_template.json 
python3 manage.py loaddata openlxp_notification_subject.json 
python3 manage.py loaddata openlxp_notification_email.json 
cd /opt/app/ 
pwd 
./start-server.sh