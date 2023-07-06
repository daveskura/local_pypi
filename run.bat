@echo off
REM
REM  Dave Skura, 2022
REM

echo  running local pypiserver

echo.
echo use build,twine,pip to negotiate with pypiserver
echo.
echo py -m build
echo.
echo py -m twine upload --repository-url http://localhost:8080 dist/*
echo.
echo pip search package --extra-index-url http://localhost:8080
echo.
echo pip install dbx==1.0.2 --extra-index-url http://localhost:8080
echo.
call pypi-server --overwrite -p 1972 ./packages -P . -a .

pause