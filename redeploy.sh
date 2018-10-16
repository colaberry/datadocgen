first_arg=$1
cd $first_arg
. venv/bin/activate
shift
for var in "$@"
do
    pip install "$var"
done
pip install dash
pip install dash-renderer
pip install dash-core-components
pip install dash-html-components
pip install gunicorn
pip uninstall -y pkg-resources==0.0.0
pip freeze > requirements.txt
git status
git add . 
git commit -m 'Updated App'
git push heroku master

