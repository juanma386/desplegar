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

logger="$_pwd/./testing.server.log"
public_html="$_pwd/./public_html"
servidor="$bin/servicio.sh"
bin="$_pwd/./bin/."
_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd="$(pwd)/.."
_permisos=$(ls -la *)
iniciar="/usr/bin/iniciar"
$(fileconfig="$_pwd/../config.ini")
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
crear_config(){ 
$(echo ' 
servidor=127.0.0.1
puerto=8000
usuario=NOCORRESPONDE
password=NOCORRESPONDE
' > ./config.ini)
echo "nuevamente intentaremos ver si se ha creado el archivo"
check_config 
}
# Ahora con esto se crea un archivo para trabajar con los datos del servidor con un file llamado config.ini
SEPARADOR
puertos_dinamicos_iniciar(){

CFG_FILE=$fileconfig

SERVER=$(awk -F "=" '/servidor/ {print $2}' "$CFG_FILE")
PORT=$(awk -F "=" '/puerto/ {print $2}' "$CFG_FILE")
USER=$(awk -F "=" '/usuario/ {print $2}' "$CFG_FILE")
PASS=$(awk -F "=" '/password/ {print $2}' "$CFG_FILE")

echo "Che! este es tu Servidor: "$SERVER""
echo "Aquí esta tu Puerto: "$PORT""
echo "Estos datos son aplicables a otros medios que quieras implementar"
echo "Aquí esta tu Usuario: "$USER""
echo "Aquí esta tu Password: "$PASS""

}
SEPARADOR
puertos_dinamicos_iniciar

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
