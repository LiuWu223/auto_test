echo ����python���⻷��
python -m venv venv
TIMEOUT /T 2

echo �������⻷��
call "./venv/Scripts/activate"
TIMEOUT /T 2

echo ����pip�汾
python -m pip install --upgrade pip
pip list
TIMEOUT /T 2

echo ��װpython������
pip install airtest
pip install --upgrade --pre uiautomator2
pip install pandas
pip install pytest
pip install pytest-assume
pip install pytest-repeat
pip install pytest-testreport
pip install pytest-rerunfailures
pip install openpyxl
pip install flask==2.3.3
pip install Flask-Cors==4.0.0
TIMEOUT /T 2

echo �鿴��ǰpython������������
pip list
TIMEOUT /T 2

echo ���ƹ����ӿ��ļ������⻷����
xcopy common venv\Lib\site-packages\self_api\ /s /e /y
