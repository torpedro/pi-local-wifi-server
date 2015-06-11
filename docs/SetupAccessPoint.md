
General Instructions
====================

Generally you can just follow this PDF: https://learn.adafruit.com/downloads/pdf/setting-up-a-raspberry-pi-as-a-wifi-access-point.pdf

If you have an Edimax adapter, like I do you have to grab a different hostapd binary from here: https://learn.adafruit.com/downloads/pdf/setting-up-a-raspberry-pi-as-a-wifi-access-point.pdf




Install Packages
----------------

sudo apt-get install isc-dhcp-server hostapd


Configuration Files
-------------------

/etc/hostapd/hostapd.conf
/etc/default/hostapd
/etc/dhcp/dhcpd.conf
/etc/default/isc-dhcp-server
/etc/network/interfaces


Override Hostapd Binary
-----------------------

# For Edimax Adapter

unzip edimax-hostapd.zip && \
sudo mv /usr/sbin/hostapd /usr/sbin/hostapd.original && \
sudo mv hostapd /usr/sbin/hostapd.edimax && \
sudo ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd && \
sudo chown root.root /usr/sbin/hostapd && \
sudo chmod 755 /usr/sbin/hostapd



Start Services
--------------

service isc-dhcp-server start
service hostapd start
