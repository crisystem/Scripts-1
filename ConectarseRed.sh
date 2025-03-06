#! /bin/bash

#Mostrar interfaces de red
m_interfaces(){
	ip link show
}

est_interfaz(){
	read -p "Introducir Interfaz: " interfaz
	read -p "up/down: " estado
	sudo ip link set dev "$interfaz" "$estado"
}

con_wifi(){
	read -p "Introducir Interfaz: " interfaz
        sudo iwlist "$interfaz"	scan | grep "ESSID"
	read -p "Nombre de la red: " nombre_red
	read -p "Contraseña: " passw

	sudo wpa_supplicant -Bw -D wext -c /etc/wpa_supplicant.conf -i "$interfaz"
	sudo dhclient "$interfaz"	
}

echo "1. Mostrar Interfaces"
echo "2. Cambiar estado interfaz"
echo "3. Conectarse a Wi-Fi"
echo "s. Salir"

read -p "Seleccionar: " opc

case $opc in
	1) m_interfaces ;;
	2) est_interfaz ;;
	3) con_wifi ;;
	s) exit 0 ;;
	*) echo "No valido" ;;
esac
