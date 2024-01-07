# Generated by Django 3.2.4 on 2024-01-07 14:45

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_auto_20240107_0820'),
    ]

    operations = [
        migrations.RenameField(
            model_name='fueraderango',
            old_name='Fecha_y_Hora',
            new_name='fecha_y_hora',
        ),
        migrations.RenameField(
            model_name='sniveldeagua',
            old_name='Fecha_y_Hora',
            new_name='fecha_y_hora',
        ),
        migrations.RenameField(
            model_name='sph',
            old_name='Fecha_y_Hora',
            new_name='fecha_y_hora',
        ),
        migrations.RenameField(
            model_name='sservo',
            old_name='Fecha_y_Hora',
            new_name='fecha_y_hora',
        ),
        migrations.RenameField(
            model_name='ssharp',
            old_name='Fecha_y_Hora',
            new_name='fecha_y_hora',
        ),
        migrations.RenameField(
            model_name='stemperatura',
            old_name='Fecha_y_Hora',
            new_name='fecha_y_hora',
        ),
        migrations.AlterUniqueTogether(
            name='fueraderango',
            unique_together={('fecha_y_hora', 'datos_sensor', 'Tinaco_Folio')},
        ),
    ]