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
postgres=# CREATE USER amarin WITH PASSWORD 'database password';
postgres=# ALTER USER admin WITH PASSWORD 'new_password'; #Change password if you forgot it
postgres=# \q
```

There are some settings you might want to change in the Mezzanine/settings.py file. Two obvious ones are the default user in the DATABASES dictionary (I have amarin, it should match the one you set up in the previous steps for postgreSQL), and the email address (check the EMAIL_HOST_USER variable). 

Before launching, export environment variables for SECRET_KEY, PASSWORD, and (optionally) EMAIL_HOST_PASSWORD: 
```
export SECRET_KEY='my secret key'
export PASSWORD='database password'
export EMAIL_HOST_PASSWORD='gmail password'
```

Test locally:
````
python manage.py runserver
