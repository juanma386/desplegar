# Verificando estado de config.ini

# Integramos datos en esta version 2.09 21042019 yuma2020 Juan Manuel Pedro Villalba
crear_config(){ 
echo ' 
servidor=127.0.0.1
puerto=8000
usuario=NOCORRESPONDE
password=NOCORRESPONDE
' > config.ini
}
check_config() {
fileconfig=./config.ini
if [ ! -e "$fileconfig" ];
then
    echo "File does not exist"
	echo "Al parecer no existe este archivo"
    echo "El archivo config.ini no existe".    " [ ".$_hoy." ]" >> testing.server.log
		crear_config
    echo "configdata deploy work created".             "[".$_hoy."]"

else
    echo "Data is exist in config_ini folder". " [ ".$_hoy." ]"
    echo "Data config_ini deploy is existed  OK ". " [ "$_hoy" ]" >> testing.server.log
    echo 'Listo todo esta instalado y listo para desplegar'
fi
}
check_config

# Agregado en la version 2.10 24042019
random(){
                shuf -i 1-65555 -n 1
        } 
 cambio_de_puertas=$(random)
 resolver_puerto_ochomil(){
 S1='8000'
 S2=$PORT
 if [ $S1!=$S2 ];
 then
 echo "S1('$S1') no es igual a S2('$S2')"
 echo "Podemos continual con los trabajos de despliegues"
 fi
 if [ $S1=$S1 ];
 then
 echo "S1('$S1') es igual a S1('$S1')"
 echo "Se cambiara toda la configuración para que se brinde un medio donde trabajar comodamente durante el despliegue"
 echo "Se ha cambiado el puerto: S1('$S1') Pedido ".	" [ "$_hoy" ]" >> testing.server.log
 echo "Se ha cambiado el puerto S1('$S1') por el puerto S2('$S2')".	" [ "$_pwd" ]" >> testing.server.log
 find ./* -name "config.ini" -print | xargs sed -i "s/8000/$cambio_de_puertas/g"
 fi
}
resolver_puerto_ochomil

server
# sh bin/servicio.sh



# Agregado en la version 2.11 24042019
#
# Servidor de producción
#
knowserver(){
                production_ok=$(curl ifconfig.me)
		find ./* -name "config.ini" -print | xargs sed -i "s/$S1L/$production_ok/g"
		echo "Listo esta todo ok"
		sh bin/servicio.sh
        } 
 cambio_de_puertas=$(knowserver)
 cambiar_a_production(){
 S1L='127.0.0.1'
 S2L=$SERVER
 if [ $S1L!=$S2L ];
 then
 echo "S1L('$S1L') no es igual a S2L('$S2L')"
 echo "Podemos continual con los trabajos de despliegues"
 sh bin/servicio.sh
fi
 if [ $S1L=$S2L ];
 then
 echo "S1L('$S1L') es igual a S2L('$S2L')"
 echo "Se cambiara toda la configuración para que se brinde un medio donde trabajar comodamente durante el despliegue"
 echo "Se ha cambiado el servidor: S1('$S1L') Pedido ".	" [ "$_hoy" ]" >> testing.server.log
 echo "Se ha cambiado el servidor S1L('$S1L') por el servidor S2L('$S2L')".	" [ "$_pwd" ]" >> testing.server.log
 knowserver
 fi
}
cambiar_a_producción
