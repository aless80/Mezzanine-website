# Mezzanine
My mezzanine-based site and blog

Theme adapted from [thecodinghouse/mezzanine-themes](https://github.com/thecodinghouse/mezzanine-themes)

## Installation
Create a virtual environment and install from requirements.txt: 

```
python -m pip install --user virtualenv
cd ~/virtualenv
virtualenv Mezzanine
source Mezzanine/bin/activate
(Mezzanine)>pip install -r requirements.txt
```

Install and setup postgreSQL:
```
sudo -u postgres createuser --superuser admin
sudo -u postgres psql   #log in psql interface
postgres=# CREATE DATABASE mezzanine;
postgres=# CREATE USER myuser WITH PASSWORD 'password';
postgres=# \q
```

Before launching export an environment variable for SECRET_KEY:
```
export SECRET_KEY='my secret key'
```

Test locally:
````
python manage.py runserver

