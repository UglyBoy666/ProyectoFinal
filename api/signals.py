from django.db.models.signals import pre_save
from django.dispatch import receiver
from .models import STemperatura, SNivelDeAgua, SPh, SServo, SSharp, FueraDeRango

@receiver(pre_save, sender=STemperatura)
def before_insert_s_temperatura(sender, instance, **kwargs):
    datos_sensor = instance.datos_sensor
    if datos_sensor is not None and (datos_sensor < 0 or datos_sensor > 100):
        FueraDeRango.objects.create(
            Fecha_y_Hora=instance.Fecha_y_Hora,
            datos_sensor=datos_sensor,
            Tinaco_Folio=instance.Tinaco_Folio,
            Modulo_idModulo=instance.Modulo_idModulo,
            TipoSensor='temperatura'
        )

@receiver(pre_save, sender=SNivelDeAgua)
def before_insert_s_nivel_de_agua(sender, instance, **kwargs):
    datos_sensor = instance.datos_sensor
    if datos_sensor is not None and (datos_sensor < 0 or datos_sensor > 100):
        FueraDeRango.objects.create(
            Fecha_y_Hora=instance.Fecha_y_Hora,
            datos_sensor=datos_sensor,
            Tinaco_Folio=instance.Tinaco_Folio,
            Modulo_idModulo=instance.Modulo_idModulo,
            TipoSensor='nivel_agua'
        )

@receiver(pre_save, sender=SPh)
def before_insert_s_ph(sender, instance, **kwargs):
    datos_sensor = instance.datos_sensor
    if datos_sensor is not None and (datos_sensor < 1 or datos_sensor > 14):
        FueraDeRango.objects.create(
            Fecha_y_Hora=instance.Fecha_y_Hora,
            datos_sensor=datos_sensor,
            Tinaco_Folio=instance.Tinaco_Folio,
            Modulo_idModulo=1,  # Usaste 1 en tu script original
            TipoSensor='ph'
        )

@receiver(pre_save, sender=SServo)
def before_insert_s_servo(sender, instance, **kwargs):
    datos_sensor = instance.datos_sensor
    if datos_sensor is not None and (datos_sensor < 0 or datos_sensor > 180):
        FueraDeRango.objects.create(
            Fecha_y_Hora=instance.Fecha_y_Hora,
            datos_sensor=datos_sensor,
            Tinaco_Folio=instance.Tinaco_Folio,
            Modulo_idModulo=1,  # Usaste 1 en tu script original
            TipoSensor='servo'
        )

@receiver(pre_save, sender=SSharp)
def before_insert_s_sharp(sender, instance, **kwargs):
    datos_sensor = instance.datos_sensor
    if datos_sensor is not None and (datos_sensor < 0 or datos_sensor > 80):
        FueraDeRango.objects.create(
            Fecha_y_Hora=instance.Fecha_y_Hora,
            datos_sensor=datos_sensor,
            Tinaco_Folio=instance.Tinaco_Folio,
            Modulo_idModulo=instance.Modulo_idModulo,
            TipoSensor='sharp'
        )