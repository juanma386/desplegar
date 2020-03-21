# desplegar

# Requisitos son los siguientes:

* Sistema Linux Debian/Ubuntu
* Sistema Microsoft Linux Debian/Ubuntu
* Comando sudo habilitado

Despliegue automatico del sistema con servidores php de manera rapida
¿Como aplicar?
Primero debes instalar debian en una un terminal VPS, PC casera con win10 o linux
Luego debes escribir lo siguiente

Desde la consola linux de Debian en tu **PC windows 10 en mi caso**
$ wget https://raw.githubusercontent.com/juanma386/desplegar/master/implementar && sudo chmod +x implementar && sudo ./implementar preparar && sudo ./implementar ahora && iniciar

Con esto tienes solo tienes que realizar las siguientes llamadas desde la consola linux

$ iniciar

Si eres de los locos como yo un verdadero topo, puedes seguirme en mi facebook https://www.facebook.com/juanmanuel.villalba.526

Para trabajar en entornos de producción eh fabricado una herramienta llamada "production.sh" esta sirve para de manera rapida reconocer el ip del servidor.

$ sh production.sh

Para instalar es simple de esta manera:

$ sudo cp production.sh /usr/bin/prodok

Luego de esto puedes ingresar en la carpeta cualquier
cd /path/to/change

y escribir 

$ prodok && iniciar

Y listo tendras la dirección de tu ip de produccion trabajando lista para testear cualquier cosa.

con esto ya podran realizar el despliegue desde **production**

Y listo puedes realizar cualquier despliegue que quieras, disfrutenlo todo lo que puedan, disculpen el codigo desastroso, pero así como lo ven funciona, se que se puede mejorar pero bueno allí quedo a la espera de sus pull request, desde ya muchas gracias acepto donaciones a puedes contactarme por whatsapp al **+549-376-498-2265** saludos, o pueden buscarme en **hexomedesarrollos.com**

Si quieren cambiar el puerto simplemente borran el archivo **config.ini** así de simple o pueden cambiar parametros a su gusto en manual.
IMPORTANTE!: ¡¡CUIDADO CON EJECUTAR ESTA OPCIÓN **PRODUCTION.SH** EN MODO LOCAL POR QUE HARA QUE NO TRABAJE Y TENGAN QUE EJECUTAR ESTOS COMANDOS!! Si por algun motivo estas trabajando en local y no quieres tener problemas con errores como los que por X motivo no quiera iniciarte el sistema, es simple: **SI USTED NO TIENEN PUERTO ABIERTO PARA TRABAJAR EN PRODUCCIÓN NO PODRA INICIAR EL SISTEMA**
Para resolver este problema debes realizar esto:

Y luego ejecutar iniciar dos veces una para instalar el arreglo y otra para ejecutarlo.


Modalidad de uso de instalar

Instalar es una herramienta creada para realizar descargas de repositorios a rapida velocidad, donde se prioriza la productividad
Modo de instalación en linux


