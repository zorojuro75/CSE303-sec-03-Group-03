# Generated by Django 4.1 on 2022-08-15 04:41

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='UserT',
            fields=[
                ('username', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'user_t',
                'managed': False,
            },
        ),
    ]
