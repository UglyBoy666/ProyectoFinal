from datetime import date
from django.utils import timezone
from api.models import Estado, TamañoTinaco, ModelosTinaco, Modulo, Tinaco, SNivelDeAgua, SPh, SServo, SSharp, STemperatura, FueraDeRango

def run(*args):
    cargar_datos()
    
def cargar_datos():

    def cargar_datos():
        # Inserciones de datos
        Estado.objects.bulk_create([
            Estado(idEstado=1, nombre_estado='Aguascalientes'),
            Estado(idEstado=2, nombre_estado='Baja California'),
            Estado(idEstado=3, nombre_estado='Baja California Sur'),
            Estado(idEstado=4, nombre_estado='Campeche'),
            Estado(idEstado=5, nombre_estado='Coahuila'),
            Estado(idEstado=6, nombre_estado='Colima'),
            Estado(idEstado=7, nombre_estado='Chiapas'),
            Estado(idEstado=8, nombre_estado='Chihuahua'),
            Estado(idEstado=9, nombre_estado='Durango'),
            Estado(idEstado=10, nombre_estado='Ciudad de México'),
            Estado(idEstado=11, nombre_estado='Guanajuato'),
            Estado(idEstado=12, nombre_estado='Guerrero'),
            Estado(idEstado=13, nombre_estado='Hidalgo'),
            Estado(idEstado=14, nombre_estado='Jalisco'),
            Estado(idEstado=15, nombre_estado='Estado de México'),
            Estado(idEstado=16, nombre_estado='Michoacán'),
            Estado(idEstado=17, nombre_estado='Morelos'),
            Estado(idEstado=18, nombre_estado='Nayarit'),
            Estado(idEstado=19, nombre_estado='Nuevo León'),
            Estado(idEstado=20, nombre_estado='Oaxaca'),
            Estado(idEstado=21, nombre_estado='Puebla'),
            Estado(idEstado=22, nombre_estado='Querétaro'),
            Estado(idEstado=23, nombre_estado='Quintana Roo'),
            Estado(idEstado=24, nombre_estado='San Luis Potosí'),
            Estado(idEstado=25, nombre_estado='Sinaloa'),
            Estado(idEstado=26, nombre_estado='Sonora'),
            Estado(idEstado=27, nombre_estado='Tabasco'),
            Estado(idEstado=28, nombre_estado='Tamaulipas'),
            Estado(idEstado=29, nombre_estado='Tlaxcala'),
            Estado(idEstado=30, nombre_estado='Veracruz'),
            Estado(idEstado=31, nombre_estado='Yucatán'),
            Estado(idEstado=32, nombre_estado='Zacatecas'),
        ])

        TamañoTinaco.objects.bulk_create([
            TamañoTinaco(idTamaño_tinaco=1, Descripcion='Chico'),
            TamañoTinaco(idTamaño_tinaco=2, Descripcion='Mediano'),
            TamañoTinaco(idTamaño_tinaco=3, Descripcion='Grande'),
        ])

        ModelosTinaco.objects.bulk_create([
            ModelosTinaco(idModelos_tinaco=1, Nombre='TNSF_0C1', Descripcion='Tinaco de tamaño pequeño con todos los sensores', Tamaño_tinaco_idTamaño_tinaco=1),
            ModelosTinaco(idModelos_tinaco=2, Nombre='TNSF_0M1', Descripcion='Tinaco de tamaño mediano con todos los sensores', Tamaño_tinaco_idTamaño_tinaco=2),
            ModelosTinaco(idModelos_tinaco=3, Nombre='TNSF_0G1', Descripcion='Tinaco de tamaño grande con todos los sensores', Tamaño_tinaco_idTamaño_tinaco=3),
        ])

        Modulo.objects.bulk_create([
            Modulo(idModulo=1, nombre='Tinaco'),
            Modulo(idModulo=2, nombre='Baño'),
            Modulo(idModulo=3, nombre='Regadera'),
            Modulo(idModulo=4, nombre='Pileta'),
        ])

        Tinaco.objects.bulk_create([
            Tinaco(
                Folio=1, Nombre='Angel', Ape_paterno='Andres', Ape_materno='Mendoza',
                Correo='angel58524410@gmail.com', Contraseña='12345678', fecha_de_compras=date(2023, 11, 1),
                registro_apertura=0, acceso_de_keypad=0, acceso_de_tarjeta=0, duracion_apertura=0,
                intentos_erroneos=0, alarma_activacion=0, Modelos_tinaco_idModelos_tinaco=1, Estado_idEstado=15
            ),
        ])

        SNivelDeAgua.objects.bulk_create([
            SNivelDeAgua(Fecha_y_Hora=timezone.now(), datos_sensor=None, Tinaco_Folio=1, Modulo_idModulo=1),
        ])

        SPh.objects.bulk_create([
            SPh(Fecha_y_Hora=timezone.now(), datos_sensor=None, Tinaco_Folio=1, Modulo_idModulo=1),
        ])

        SServo.objects.bulk_create([
            SServo(Fecha_y_Hora=timezone.now(), datos_sensor=None, Tinaco_Folio=1, Modulo_idModulo=1),
        ])

        SSharp.objects.bulk_create([
            SSharp(Fecha_y_Hora=timezone.now(), datos_sensor=None, Tinaco_Folio=1, Modulo_idModulo=1),
        ])

        STemperatura.objects.bulk_create([
            STemperatura(Fecha_y_Hora=timezone.now(), datos_sensor=None, Tinaco_Folio=1, Modulo_idModulo=1),
        ])

        FueraDeRango.objects.bulk_create([
            FueraDeRango(Fecha_y_Hora=timezone.now(), datos_sensor=None, Tinaco_Folio=1, Modulo_idModulo=1, TipoSensor='temperatura'),
        ])


if __name__ == "__main__":
    run()