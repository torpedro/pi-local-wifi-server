Local Wifi Network with DNS on Raspberry Pi
===========================================

This project contains descriptions and configurations to setup a local Wifi network on a Raspberry Pi. Users can connect to that network and access local applications deployed in that network.

Example Use-Case
----------------

While hosting an event, guests can connect to the Wifi network with their phone and access custom applications. For example they can send messages to the host, leave feedback or requests about the the event. This is a convenient way to leave messages for the hosts, who can check their messages at any time. This is especially useful when it's an event where there is no way to directly interact with the hosts or the hosts are not known to some of the people.


Setup Description
-----------------

This section contains information about the hardware and software used in our setup.

#### Hardware

 * Raspberry Pi (any model)
 * USB Wifi Adapter (we use the Edimax EW-7811Un, see notes about other adapters)

 
#### Software

 * Raspbian Wheezy (should work with other OS too)
 * hostapd (Access Point Server)
 * isc-dhcp-server (DHCP Server)
 * bind9 (DNS Server, *optional*)
