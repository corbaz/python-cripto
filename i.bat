cls
REM ******************
REM     Instalador
REM  pip install module_name
REM con BACKUP PREVIO
REM ******************
copy requirements.txt *.bak
pip install --upgrade %1 %2 %3 %4 %5
pip freeze > requirements.txt