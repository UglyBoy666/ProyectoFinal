# Generated by Django 3.2.4 on 2024-01-02 02:38

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Estado',
            fields=[
                ('idEstado', models.AutoField(primary_key=True, serialize=False)),
                ('nombre_estado', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'estado',
            },
        ),
        migrations.CreateModel(
            name='ModelosTinaco',
            fields=[
                ('idModelos_tinaco', models.AutoField(primary_key=True, serialize=False)),
                ('Nombre', models.CharField(max_length=45)),
                ('Descripcion', models.CharField(max_length=90)),
            ],
            options={
                'db_table': 'modelos_tinaco',
            },
        ),
        migrations.CreateModel(
            name='Modulo',
            fields=[
                ('idModulo', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'modulo',
            },
        ),
        migrations.CreateModel(
            name='TamañoTinaco',
            fields=[
                ('idTamaño_tinaco', models.AutoField(primary_key=True, serialize=False)),
                ('Descripcion', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'tamaño_tinaco',
            },
        ),
        migrations.CreateModel(
            name='TipoMantenimiento',
            fields=[
                ('idtipo_mantenimiento', models.AutoField(primary_key=True, serialize=False)),
                ('Descripcion', models.CharField(max_length=45)),
            ],
            options={
                'db_table': 'tipo_mantenimiento',
            },
        ),
        migrations.CreateModel(
            name='Tinaco',
            fields=[
                ('Folio', models.IntegerField(primary_key=True, serialize=False)),
                ('Nombre_completo', models.CharField(max_length=250)),
                ('Correo', models.CharField(max_length=45)),
                ('Contraseña', models.CharField(max_length=45)),
                ('fecha_de_compras', models.DateField()),
                ('registro_apertura', models.IntegerField()),
                ('acceso_de_keypad', models.IntegerField()),
                ('acesso_de_tarjeta', models.IntegerField()),
                ('duracion_apertura', models.IntegerField()),
                ('intentos_erroneos', models.IntegerField()),
                ('alarma_activacion', models.IntegerField()),
                ('Estado_idEstado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.estado')),
                ('Modelos_tinaco_idModelos_tinaco', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.modelostinaco')),
                ('id_usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'tinaco',
            },
        ),
        migrations.CreateModel(
            name='STemperatura',
            fields=[
                ('Fecha_y_Hora', models.DateTimeField(default=django.utils.timezone.now, primary_key=True, serialize=False)),
                ('datos_sensor', models.FloatField()),
                ('Modulo_idModulo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.modulo')),
                ('Tinaco_Folio', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tinaco')),
            ],
            options={
                'db_table': 's_temperatura',
            },
        ),
        migrations.CreateModel(
            name='SSharp',
            fields=[
                ('Fecha_y_Hora', models.DateTimeField(default=django.utils.timezone.now, primary_key=True, serialize=False)),
                ('datos_sensor', models.FloatField()),
                ('Modulo_idModulo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.modulo')),
                ('Tinaco_Folio', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tinaco')),
            ],
            options={
                'db_table': 's_sharp',
            },
        ),
        migrations.CreateModel(
            name='SServo',
            fields=[
                ('Fecha_y_Hora', models.DateTimeField(default=django.utils.timezone.now, primary_key=True, serialize=False)),
                ('datos_sensor', models.FloatField()),
                ('Tinaco_Folio', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tinaco')),
            ],
            options={
                'db_table': 's_servo',
            },
        ),
        migrations.CreateModel(
            name='SPh',
            fields=[
                ('Fecha_y_Hora', models.DateTimeField(default=django.utils.timezone.now, primary_key=True, serialize=False)),
                ('datos_sensor', models.FloatField()),
                ('Tinaco_Folio', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tinaco')),
            ],
            options={
                'db_table': 's_ph',
            },
        ),
        migrations.CreateModel(
            name='SNivelDeAgua',
            fields=[
                ('Fecha_y_Hora', models.DateTimeField(default=django.utils.timezone.now, primary_key=True, serialize=False)),
                ('datos_sensor', models.CharField(max_length=45)),
                ('Modulo_idModulo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.modulo')),
                ('Tinaco_Folio', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tinaco')),
            ],
            options={
                'db_table': 's_nivel_de_agua',
            },
        ),
        migrations.AddField(
            model_name='modelostinaco',
            name='Tamaño_tinaco_idTamaño_tinaco',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tamañotinaco'),
        ),
        migrations.CreateModel(
            name='FueraDeRango',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Fecha_y_Hora', models.DateTimeField(blank=True, null=True)),
                ('datos_sensor', models.FloatField(blank=True, null=True)),
                ('Tinaco_Folio', models.IntegerField()),
                ('TipoSensor', models.CharField(max_length=45)),
                ('Modulo_idModulo', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.modulo')),
            ],
            options={
                'db_table': 'fuera_de_rango',
            },
        ),
        migrations.CreateModel(
            name='Costos',
            fields=[
                ('idCostos', models.AutoField(primary_key=True, serialize=False)),
                ('costo', models.CharField(max_length=45)),
                ('tipo_mantenimiento_idtipo_mantenimiento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.tipomantenimiento')),
            ],
            options={
                'db_table': 'costos',
            },
        ),
    ]
