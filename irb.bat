cls
REM ******************
REM    Instalador
REM    desde BAK
REM  requirements.bak
REM  BACKUP Posterior
REM ******************
pip install -r requirements.bak
copy requirements.txt *.bak

python --version
pip --version
pip freeze > requirements.txt
