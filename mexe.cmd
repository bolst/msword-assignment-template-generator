@ECHO OFF

pip install -r requirements.txt

python -m PyInstaller -y msatg.py

rmdir /s /q build

del msatg.spec

python -c "import sys;print(sys.executable.rsplit('''\\''',1)[0])" > tmpFile
SET /p pypath= < tmpFile

DEL tmpFile

move dist\msatg\msatg.exe %pypath%
move dist\msatg\_internal %pypath%

