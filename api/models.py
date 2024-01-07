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
    idSnda = models.AutoField(primary_key=True)
    fecha_y_hora = models.DateTimeField(default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='tinaco_folio')
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE,db_column='modulo_idmodulo')
    
    class Meta:
        db_table = 'sniveldeagua'

class SPh(models.Model):
    idSph = models.AutoField(primary_key=True)
    fecha_y_hora = models.DateTimeField(default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='tinaco_folio')
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE,db_column='modulo_idmodulo')
    
    class Meta:
        db_table = 'sph'

class SServo(models.Model):
    idServo = models.AutoField(primary_key=True)
    fecha_y_hora = models.DateTimeField(default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='tinaco_folio')
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE,db_column='modulo_idmodulo')
    
    class Meta:
        db_table = 'sservo'

class SSharp(models.Model):
    idSsharp = models.AutoField(primary_key=True)
    fecha_y_hora = models.DateTimeField(default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='tinaco_folio')
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE,db_column='modulo_idmodulo')
    
    class Meta:
        db_table = 'ssharp'

class STemperatura(models.Model):
    idStem = models.AutoField(primary_key=True)
    fecha_y_hora = models.DateTimeField(default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE, db_column='tinaco_folio')
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE,db_column='modulo_idmodulo')

    class Meta:
        db_table = 'stemperatura'

class FueraDeRango(models.Model):
    idFdR = models.AutoField(primary_key=True)
    fecha_y_hora = models.DateTimeField(default=timezone.now)
    datos_sensor = models.FloatField(null=True)
    Tinaco_Folio = models.ForeignKey(Tinaco, on_delete=models.CASCADE)
    Modulo = models.ForeignKey(Modulo, on_delete=models.CASCADE, null=True)
    TipoSensor = models.CharField(max_length=45)

    class Meta:
        unique_together = (('fecha_y_hora', 'datos_sensor', 'Tinaco_Folio'),)