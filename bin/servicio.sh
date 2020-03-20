#!/bin/sh
# File $servidor
echo '
## Part Deploy working
##
## @author      Villalba Juan Manuel Pedro <https://github.com/juanma386>
# @Version:     2.9.0
# @Estado:      Beta
# @Destino:     Deploy Server Php Linux
# @Date:        05:41pm 26-04-2019
# @EMAIL:		Hexome Desarrollos Dream team <hexomedesarrollos@gmail.com>
# @Advertencia  Usar con cautela y bajo propia responsabilidad
# @Licence:     GPLv2 Free Software Foundation <licensing@fsf.org>
';

_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)
_permisos=$(ls -la *)
iniciar="/usr/bin/iniciar"

S1="8000"
fileconfig="$_pwd/config.ini"
SERVER=$(awk -F "=" '/servidor/ {print $2}' "$fileconfig")
PORT=$(awk -F "=" '/puerto/ {print $2}' "$fileconfig")
USER=$(awk -F "=" '/usuario/ {print $2}' "$fileconfig")
PASS=$(awk -F "=" '/password/ {print $2}' "$fileconfig")

logger="$_pwd/./testing.server.log"
public_html="$_pwd/./public_html"
servidor="$bin/servicio.sh"
bin="$_pwd/./bin/."



FILE="/usr/bin/iniciar"
fileroute="$_pwd/./bin/route.php"
startcheck=$iniciar


SEPARADOR(){
cat <<EOF


 ################################################
 ################################################

 ##         ######   ###   ##  ##    ##  ##    ## 
 ##         ######   ###   ##  ##    ##  :##  ##: 
 ##           ##     ###:  ##  ##    ##   ##  ##  
 ##           ##     ####  ##  ##    ##   :####:  
 ##           ##     ##:#: ##  ##    ##    ####   
 ##           ##     ## ## ##  ##    ##    :##:   
 ##           ##     ## ## ##  ##    ##    :##:   
 ##           ##     ## :#:##  ##    ##    ####   
 ##           ##     ##  ####  ##    ##   :####:  
 ##           ##     ##  :###  ##    ##   ##::##  
 ########   ######   ##   ###  :######:  :##  ##: 
 ########   ######   ##   ###   :####:   ##    ## 

 ################################################
 ################################################

EOF
}
# Integramos datos en esta version 2.09 21042019 yuma2020 Juan Manuel Pedro Villalba

# Agregado en la version 2.10 24042019

 
# Ahora con esto se crea un archivo para trabajar con los datos del servidor con un file llamado config.ini

puertos_dinamicos_iniciar(){

echo "Che! este es tu Servidor: "$SERVER""
echo "Aquí esta tu Puerto: "$PORT""
echo "Estos datos son aplicables a otros medios que quieras implementar"
echo "Aquí esta tu Usuario: "$USER""
echo "Aquí esta tu Password: "$PASS""

}

puertos_dinamicos_iniciar

# Add layer security errors

if [ "$PORT" -lt "$S1" ]; then
	echo $PORT" es MENOR que "$S1
    echo "$fileconfig"
    break;
    exit;
fi

file=./testing.server.log
if [ ! -e "$file" ]; then
    echo "File does not exist"
    echo "Create File inicializated Deploy"." [ "$_hoy" ]"
    echo "Create File inicializated Deploy".	" [ "$_hoy" ]" > testing.server.log
else
    echo "Checking file is exist deployed again"." [ "$_hoy" ]"
    echo "Deployed again executed OK "."  [ "$_hoy" ]" >> testing.server.log
fi

ADDR_PORT=${1:-$SERVER:$PORT}
DOC_ROOT="$_pwd"

php -S "$ADDR_PORT" -t "$DOC_ROOT/" -f bin/route.php 

