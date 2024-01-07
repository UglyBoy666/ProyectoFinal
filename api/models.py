from django.db import models
from django.utils import timezone

class Estado(models.Model):
    idEstado = models.IntegerField(primary_key=True)
    nombre_estado = models.CharField(max_length=45, unique=True)

class TamañoTinaco(models.Model):
    idTamaño_tinaco = models.IntegerField(primary_key=True)
    Descripcion = models.CharField(max_length=45, unique=True)

class ModelosTinaco(models.Model):
    idModelos_tinaco = models.IntegerField(primary_key=True)
    Nombre = models.CharField(max_length=45)
    Descripcion = models.CharField(max_length=90)
    Tamaño_tinaco_idTamaño_tinaco = models.ForeignKey(TamañoTinaco, on_delete=models.CASCADE)

class Modulo(models.Model):
    idModulo = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=45, unique=True)

class Tinaco(models.Model):
    Folio = models.IntegerField(primary_key=True)
    Nombre = models.CharField(max_length=250)
    Ape_paterno = models.CharField(max_length=250)
    Ape_materno = models.CharField(max_length=250)
    Correo = models.CharField(max_length=45, unique=True)
    Contraseña = models.CharField(max_length=45)
    fecha_de_compras = models.DateField()
    registro_apertura = models.IntegerField()
    acceso_de_keypad = models.IntegerField()
    acceso_de_tarjeta = models.IntegerField()
    duracion_apertura = models.IntegerField()
    intentos_erroneos = models.IntegerField()
    alarma_activacion = models.IntegerField()
    Modelos_tinaco = models.ForeignKey(ModelosTinaco, on_delete=models.CASCADE)
    Estado = models.ForeignKey(Estado, on_delete=models.CASCADE)

class SNivelDeAgua(models.Model):
    Fecha_y_Hora = models.DateTimeField(primary_key=True, default=timezone.now)
    datos_sensor = models.CharField(max_length=45, null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE)

class SPh(models.Model):
    Fecha_y_Hora = models.DateTimeField(primary_key=True, default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE)

class SServo(models.Model):
    Fecha_y_Hora = models.DateTimeField(primary_key=True, default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE)

class SSharp(models.Model):
    Fecha_y_Hora = models.DateTimeField(primary_key=True, default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE)

class STemperatura(models.Model):
    Fecha_y_Hora = models.DateTimeField(primary_key=True, default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE)

class FueraDeRango(models.Model):
    Fecha_y_Hora = models.DateTimeField(primary_key=True, default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE, null=True)
    TipoSensor = models.CharField(max_length=45)

    class Meta:
        unique_together = (('Fecha_y_Hora', 'datos_sensor', 'Tinaco_Folio'),)
