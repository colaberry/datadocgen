mkdir datadoc_auto_example2
cd datadoc_auto_example2
git init
virtualenv -p python3 venv
. venv/bin/activate
pip install dash
pip install dash-renderer
pip install dash-core-components
pip install dash-html-components
pip install plotly
pip install gunicorn
pip install numpy
pip freeze > requirements.txt

