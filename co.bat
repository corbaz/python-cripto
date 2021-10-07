rem Por defecto, el servidor que viene con Flask está a la escucha
rem en el puerto 5000
rem flask run --port 2736
rem O bien:
rem python -m flask run
rem Para aceptar peticiones de otros ordenadores de nuestra red
cls
set FLASK_ENV=development
set FLASK_APP=__init__.py

REM app.config['MYSQL_HOST'] = 'us-cdbr-east-04.cleardb.com'
REM app.config['MYSQL_USER'] = 'bd14f4345c6a06'
REM app.config['MYSQL_PASSWORD'] = '79dc11f0'
REM app.config['MYSQL_DB'] = 'heroku_88386706e67bbf9'

SET FLASK_DATABASE_HOST = 'us-cdbr-east-04.cleardb.com'
SET FLASK_DATABASE_USER = 'bd14f4345c6a06'
SET FLASK_DATABASE_PASSWORD = '79dc11f0'
SET FLASK_DATABASE = 'heroku_88386706e67bbf9'

python -m flask run cmd-iniciar-db

rem --host 0.0.0.0 --port 2736