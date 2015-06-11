
Install BIND server
-------------------

apt-get install bind9 bind9-doc


Register in dhcpd.conf
----------------------

```
# in subnet definition
	option domain-name-servers 192.168.42.1;
```

