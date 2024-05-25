# Generated by Django 4.2.3 on 2024-05-24 16:34

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('jeepney_api', '0003_alter_jeepney_jeepney_service_no'),
    ]

    operations = [
        migrations.CreateModel(
            name='PassengerVolume',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jeepney_stop_code', models.CharField(max_length=20)),
                ('volume_of_passengers', models.IntegerField()),
                ('date_time', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
    ]