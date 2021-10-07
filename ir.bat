cls
REM ******************
REM   Instalador de
REM  requirements.txt
REM con BACKUP PREVIO
REM ******************
copy requirements.txt *.bak
pip freeze > requirements.txt

python --version
pip --version
pip install -r requirements.txt
