cls
REM ******************
REM    GENERADOR de
REM  requirements.txt
REM con BACKUP PREVIO
REM ******************
copy requirements.txt *.bak
pip freeze > requirements.txt
