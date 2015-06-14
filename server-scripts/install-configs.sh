#!/bin/bash
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CONFIG_FILES=$SCRIPT_DIR/../conf-files

echo "Installing configuration files"

echo " * Installing hostapd configuration..."
cp $CONFIG_FILES/hostapd.conf 		/etc/hostapd/hostapd.conf
cp $CONFIG_FILES/hostapd 			/etc/default/hostapd

echo " * Installing dhcp configuration..."
cp $CONFIG_FILES/dhcpd.conf 		/etc/dhcp/dhcpd.conf
cp $CONFIG_FILES/isc-dhcp-server 	/etc/default/isc-dhcp-server

echo " * Installing network interface configuration..."
cp $CONFIG_FILES/interfaces 		/etc/network/interfaces

echo " * Installing dns configuration..."
cp $CONFIG_FILES/dns/*				/etc/bind/

echo "All done!"
