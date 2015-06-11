
Operation System
----------------

Install Raspbian Wheezy


Setup SSH-Key Login
-------------------

# On Server

`mkdir .ssh`

# Local (replace @pi with your Pi-IP)

```
cat ~/.ssh/id_rsa.pub | ssh pi@pi 'cat >> .ssh/authorized_keys'
```

For the scripts to work also set this up for `root`.


Disable Password Login
----------------------

`sudo vim /etc/ssh/sshd_config`

```
PasswordAuthentication no
```

`sudo service ssh restart`