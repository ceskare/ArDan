# Generated by Django 4.2.5 on 2023-10-20 13:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('test_app', '0003_subscriber_alter_post_options_alter_post_text'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='subscriber',
            options={'verbose_name': 'Пользователь', 'verbose_name_plural': 'Пользователи'},
        ),
    ]