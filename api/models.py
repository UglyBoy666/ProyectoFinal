from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone

# Create your models here.
class TipoMantenimiento(models.Model):
    idtipo_mantenimiento = models.AutoField(primary_key=True)
    Descripcion = models.CharField(max_length=45)
    class Meta:
        db_table = 'tipo_mantenimiento'

class Costos(models.Model):
    idCostos = models.AutoField(primary_key=True)
    costo = models.CharField(max_length=45)
    tipo_mantenimiento_idtipo_mantenimiento = models.ForeignKey(TipoMantenimiento, on_delete=models.CASCADE, db_column='tipo_mantenimiento_idtipo_mantenimiento')
    class Meta:
        db_table = 'costos'
        
class Estado(models.Model):
    idEstado = models.AutoField(primary_key=True)
    nombre_estado = models.CharField(max_length=45)
    class Meta:
        db_table = 'estado'
        
class Modulo(models.Model):
    idModulo = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, null=True, blank=True)
    class Meta:
        db_table = 'modulo'
        
class FueraDeRango(models.Model):
    Fecha_y_Hora = models.DateTimeField(null=True, blank=True)
    datos_sensor = models.FloatField(null=True, blank=True)
    Tinaco_Folio = models.IntegerField()
    Modulo_idModulo = models.ForeignKey(Modulo, on_delete=models.CASCADE, null=True, blank=True, db_column='Modulo_idModulo')
    TipoSensor = models.CharField(max_length=45)
    class Meta:
        db_table = 'fuera_de_rango'
        
class TamañoTinaco(models.Model):
    idTamaño_tinaco = models.AutoField(primary_key=True)
    Descripcion = models.CharField(max_length=45)
    class Meta:
        db_table = 'tamaño_tinaco'
        
class ModelosTinaco(models.Model):
    idModelos_tinaco = models.AutoField(primary_key=True)
    Nombre = models.CharField(max_length=45)
    Descripcion = models.CharField(max_length=90)
    Tamaño_tinaco_idTamaño_tinaco = models.ForeignKey(TamañoTinaco, on_delete=models.CASCADE, db_column='Tamaño_tinaco_idTamaño_tinaco')
    class Meta:
        db_table = 'modelos_tinaco'
        
class Tinaco(models.Model):
    Folio = models.IntegerField(primary_key=True)
    Nombre_completo = models.CharField(max_length=250)
    Correo = models.CharField(max_length=45)
    Contraseña = models.CharField(max_length=45)
    fecha_de_compras = models.DateField()
    registro_apertura = models.IntegerField()
    acceso_de_keypad = models.IntegerField()
    acceso_de_tarjeta = models.IntegerField()
    duracion_apertura = models.IntegerField()
    intentos_erroneos = models.IntegerField()
    alarma_activacion = models.IntegerField()
    Modelos_tinaco_idModelos_tinaco = models.ForeignKey(ModelosTinaco, on_delete=models.CASCADE, db_column='Modelos_tinaco_idModelos_tinaco')
    Estado_idEstado = models.ForeignKey(Estado, on_delete=models.CASCADE, db_column='Estado_idEstado')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, db_column='id_usuario')
    class Meta:
        db_table = 'tinaco'
        
class SNivelDeAgua(models.Model):
    Fecha_y_Hora = models.DateTimeField(default=timezone.now, primary_key=True)
    datos_sensor = models.CharField(max_length=45)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='Tinaco_Folio')
    Modulo_idModulo = models.ForeignKey(Modulo, on_delete=models.CASCADE, db_column='Modulo_idModulo')
    class Meta:
        db_table = 's_nivel_de_agua'
        
class SPh(models.Model):
    Fecha_y_Hora = models.DateTimeField(default=timezone.now, primary_key=True)
    datos_sensor = models.FloatField()
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='Tinaco_Folio')
    class Meta:
        db_table = 's_ph'
        
class SServo(models.Model):
    Fecha_y_Hora = models.DateTimeField(default=timezone.now, primary_key=True)
    datos_sensor = models.FloatField()
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='Tinaco_Folio')
    class Meta:
        db_table = 's_servo'
        
class SSharp(models.Model):
    Fecha_y_Hora = models.DateTimeField(default=timezone.now, primary_key=True)
    datos_sensor = models.FloatField()
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='Tinaco_Folio')
    Modulo_idModulo = models.ForeignKey(Modulo, on_delete=models.CASCADE, db_column='Modulo_idModulo')
    class Meta:
        db_table = 's_sharp'
        
class STemperatura(models.Model):
    Fecha_y_Hora = models.DateTimeField(default=timezone.now, primary_key=True)
    datos_sensor = models.FloatField()
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='Tinaco_Folio')
    Modulo_idModulo = models.ForeignKey(Modulo, on_delete=models.CASCADE, db_column='Modulo_idModulo')
    class Meta:
        db_table = 's_temperatura'
