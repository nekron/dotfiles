#!/bin/bash
#
# Nombre: startWirelessNetwork
# Version: 0.2
# Autor: Adrian Norberto Marino
# Correo: adrianmarino@gmail.com
# Notas: Este script necesita que los paquetes
#        wireless-tools y wpasupplicant esten instalados.
#
BACK_TITLE="Gentoo GNU/Linux - Wifi Network Connection script"
WIRELESS_INTERFACE=wlan0

trim() {
 expr match "$1" '[ \t\n]*\(.*[^ \t\n]\)[ \t\n]*$'
}

function prepareEnvironment {
  echo "...prepare environment..."
  
  # Load wlan module...
  #sudo modprobe ndiswrapper
  echo "...Load up Wifi Card..."
  ifconfig wlan0 up
  sleep 1

  # Remove old passphrase...
  echo "...Remove old passphase..."
  rm -f $HOME/.wireless.conf
  sleep 1

  echo "...kill wpa_supplicant..."
  killall wpa_supplicant
  sleep 1
  return 0
}

function showNetworks {
  dialog --backtitle "$BACK_TITLE" \
	 --infobox "...searching wireles networks..." 3 37

  LIST="$(sudo iwlist $WIRELESS_INTERFACE scan | grep ESSID )"
  #LIST=trim $LIST

  dialog --backtitle "$BACK_TITLE" \
	 --title "Available networks on $WIRELESS_INTERFACE" \
	 --msgbox "$LIST" 10 60 
  return 0
}

# Begin script...

prepareEnvironment

showNetworks

dialog --backtitle "$BACK_TITLE" --inputbox "Network Name" 8 50 2>/tmp/network.$$
NETWORK_SSID=$(cat /tmp/network.$$)

dialog --backtitle "$BACK_TITLE" --passwordbox "Network password" 8 50 2>/tmp/input.$$
NETWORK_PASSWORD=$(cat /tmp/input.$$)

#dialog --backtitle "$BACK_TITLE" --msgbox "Network: $NETWORK_SSID, password: $NETWORK_PASSWORD" 10 37




wpa_passphrase Manas masteinfilamentogroso \
	> $HOME/.wireless.conf

wpa_supplicant -D wext -B -i $WIRELESS_INTERFACE \
	-c $HOME/.wireless.conf

clear
killall dhcpcd
echo "... Request IP to DHCP Server..."
dhcpcd $WIRELESS_INTERFACE

dialog  --backtitle "$BACK_TITLE" \
	--title "Wifi Network Connection" \
	--infobox "The Conection is success" 3 28

