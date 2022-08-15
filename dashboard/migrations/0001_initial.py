# Generated by Django 4.1 on 2022-08-15 14:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='MemberT',
            fields=[
                ('idmember_t', models.IntegerField(primary_key=True, serialize=False)),
                ('member_name', models.CharField(max_length=45)),
                ('member_age', models.IntegerField()),
            ],
            options={
                'db_table': 'member_t',
                'managed': False,
            },
        ),
    ]
