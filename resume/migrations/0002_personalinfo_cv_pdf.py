# -*- coding: utf-8 -*-
# Generated by Django 1.10.8 on 2018-04-21 09:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resume', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='personalinfo',
            name='cv_pdf',
            field=models.FileField(blank=True, help_text=b'Downloadable resume file', upload_to=b'static/resume/img/'),
        ),
    ]
