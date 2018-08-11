# Mezzanine
My mezzanine-based site and blog

![Alt Text](https://github.com/aless80/Mezzanine-website/blob/master/Mezzanine-website.png)

Theme adapted from [thecodinghouse/mezzanine-themes](https://github.com/thecodinghouse/mezzanine-themes)

## Installation
### Mezzanine
Create a virtual environment and install from requirements.txt: 

```
python -m pip install --user virtualenv
cd ~/virtualenv
virtualenv Mezzanine
source Mezzanine/bin/activate
(Mezzanine)>pip install -r requirements.txt
```

### Database: postgreSQL or mySQL

The Mezzanine/settings.py file contains, among other settings, the database used for this project. Replace Mezzanine/settings.py with one of these files using postgreSQL, SQLite, mySQL, mySQL in pythonanywhere, respectively

```
Mezzanine/settings_postgresql.py 
Mezzanine/settings_sqlite.py
Mezzanine/settings_mysql.py
Mezzanine/settings_mysql_pythonanywhere.py
```

Setup postgreSQL or mySQL. For postgreSQL:
```
sudo -u postgres createuser --superuser admin
sudo -u postgres psql   #log in psql interface
postgres=# CREATE DATABASE mezzanine;
postgres=# CREATE USER amarin WITH PASSWORD 'database password';
postgres=# ALTER USER admin WITH PASSWORD 'new_password'; #Change password if you forgot it
postgres=# \q
```

For mySQL:
```
mysql -u root -p
mysql> CREATE DATABASE mezzanine_mysql;
mysql> GRANT ALL PRIVILEGES ON *.* TO 'amarin'@'localhost' IDENTIFIED BY 'database password';
mysql> SET PASSWORD FOR 'amarin'@'localhost' = PASSWORD('new_password'); #Change password if you forgot it
mysql> \q
```

### Setup
There are some settings you might want to change in the Mezzanine/settings.py file. Two obvious ones are the default user in the DATABASES dictionary (I have amarin, it should match the one you set up in the previous steps for postgreSQL), and the email address (check the EMAIL_* variables). 

Before launching, export environment variables for SECRET_KEY, PASSWORD, and (optionally) EMAIL_HOST_PASSWORD: 
```
export SECRET_KEY='my secret key'
export PASSWORD='database password'
export EMAIL_HOST_PASSWORD='gmail password'
```
### Running locally
Import my data to mySQL:
```
mysql -u amarin -p mezzanine_mysql < Mezzanine/mezzanine_mysql_dump.sql
```

Import my data to postgreSQL:
```
python manage.py loaddata resume/fixtures/data.json
```

Test on a local server
```
python manage.py runserver
```


### Notes
Export site and blog data from mysql:
```
mysqldump -u amarin -p mezzanine_mysql > Mezzanine/mezzanine_mysql_dump.sql
```