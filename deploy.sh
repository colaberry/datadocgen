first_arg=$1
cd $first_arg
git init
virtualenv -p python3 venv
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
heroku create $first_arg
git add . 
git commit -m 'Initial app boilerplate'
git push heroku master
heroku ps:scale web=1

