# desplegar
Despliegue automatico del sistema con servidores php de manera rapida
¿Como aplicar?
Primero debes instalar debian en una un terminal VPS, PC casera con win10 o linux
Luego debes escribir lo siguiente

Desde la consola linux de Debian en tu **PC windows 10 en mi caso**
$ sudo -v && git clone https://github.com/juanma386/desplegar.git . && sudo chmod +x iniciar && sudo cp iniciar /usr/bin/ && iniciar

Con esto tienes solo tienes que realizar las siguientes llamadas desde la consola linux

$ iniciar

Para trabajar en entornos de producción eh fabricado una herramienta llamada "production.sh" esta sirve para de manera rapida reconocer el ip del servidor.

$ sh production.sh

con esto ya podran realizar el despliegue desde **production**

Y listo puedes realizar cualquier despliegue que quieras, disfrutenlo todo lo que puedan, disculpen el codigo desastroso, pero así como lo ven funciona, se que se puede mejorar pero bueno allí quedo a la espera de sus pull request, desde ya muchas gracias acepto donaciones a puedes contactarme por whatsapp al **+549-376-498-2265** saludos, o pueden buscarme en **hexomedesarrollos.com**

Si quieren cambiar el puerto simplemente borran el archivo **config.ini** así de simple o pueden cambiar parametros a su gusto en manual.

$ rm -v config.ini
