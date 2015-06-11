#!/bin/bash
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CONFIG_FILES=$SCRIPT_DIR/../conf-files

echo "Install configuration files"

echo " * Install hostapd configuration..."
cp $CONFIG_FILES/hostapd.conf 		/etc/hostapd/hostapd.conf
cp $CONFIG_FILES/hostapd 			/etc/default/hostapd

echo " * Install dhcp configuration..."
cp $CONFIG_FILES/dhcpd.conf 		/etc/dhcp/dhcpd.conf
cp $CONFIG_FILES/isc-dhcp-server 	/etc/default/isc-dhcp-server

echo " * Install network interface configuration..."
cp $CONFIG_FILES/interfaces 		/etc/network/interfaces

echo " * Install dns configuration..."
cp $CONFIG_FILES/dns/*				/etc/bind/

echo "All done!"
