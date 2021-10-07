cls
REM ******************
REM   Desinstalador
REM  pip uninstall module_name
REM con BACKUP PREVIO
REM ******************
copy requirements.txt *.bak
pip uninstall %1 %2 %3 %4 %5
pip freeze > requirements.txt