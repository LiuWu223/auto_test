@echo off
echo ��ǰĿ¼:%~dp0
cd %~dp0
TIMEOUT /T 2

if exist "venv" (
	echo "�Ѿ���װ��python���⻷��"
	echo �������⻷��
	call "./venv/Scripts/activate"
	TIMEOUT /T 2
) else (
 
	call "./envir_config"
	TIMEOUT /T 2
	call "./envir_config"
	TIMEOUT /T 2
	call "./envir_config"
	TIMEOUT /T 2
)

echo ���ƹ����ӿ��ļ������⻷����
xcopy common venv\Lib\site-packages\self_api\ /s /e /y

python run_task.py
cmd 