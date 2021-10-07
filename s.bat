@ECHO OFF
rem Por defecto, el servidor que viene con Flask está a la escucha
rem en el puerto 5000
rem flask run --port 2736
rem O bien:
rem python -m flask run
rem Para aceptar peticiones de otros ordenadores de nuestra red
cls
set FLASK_ENV=development
set FLASK_APP=__init__


REM SET FLASK_DATABASE_HOST = 'us-cdbr-east-04.cleardb.com'
SET FLASK_DATABASE_HOST = 'eu-cdbr-west-01.cleardb.com'
REM SET FLASK_DATABASE_USER = 'bd14f4345c6a06'
SET FLASK_DATABASE_USER = 'bbfa27cd01f002'
REM SET FLASK_DATABASE_PASSWORD = '79dc11f0'
SET FLASK_DATABASE_PASSWORD = '9da481ca'
REM SET FLASK_DATABASE = 'heroku_88386706e67bbf9'
SET FLASK_DATABASE = 'heroku_411fd86f2aacbe8'

REM heroku config | grep CLEARDB_DATABASE_URL
REM CLEARDB_DATABASE_URL: mysql://bbfa27cd01f002:9da481ca@eu-cdbr-west-01.cleardb.com/heroku_411fd86f2aacbe8?reconnect=true

python -m flask run --cert=adhoc --host 0.0.0.0 --port 2736
rem flask run