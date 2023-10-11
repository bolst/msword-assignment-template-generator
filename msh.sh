pip install -r requirements.txt

PyInstaller -y msatg.py

rm -r build

rm msatg.spec

python -c "import sys;print(sys.executable.rsplit('/',1)[0])" > tmpFile
pypath=`cat tmpFile`
rm tmpFile

cp -r dist/msatg/* $pypath

rm -r dist/msatg