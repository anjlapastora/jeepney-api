# Generated by Django 4.2.3 on 2024-05-24 14:52

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Jeepney',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jeepney_service_no', models.CharField(max_length=20)),
                ('jeepney_stop_code', models.CharField(max_length=20)),
                ('operator', models.CharField(max_length=50)),
                ('origin_code', models.CharField(max_length=20)),
                ('destination_code', models.CharField(max_length=20)),
                ('estimated_arrival', models.DateTimeField(default=django.utils.timezone.now)),
                ('latitude', models.FloatField()),
                ('longitude', models.FloatField()),
            ],
        ),
    ]
