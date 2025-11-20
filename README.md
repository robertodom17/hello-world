# Curso-ansible-roberto
## Puesta en funcionamiento del escenario para Ansible

Tras muchos problemas con la tarjeta de los **srvxx debian 12** con el modo RED NAT porque hoy funcionaba y mañana dejaba de funcionar he optado por otro modo de configuración de red de cada VM.

En cada **VM srvxx debian 12** he configurado dos tarjetas de red. 
* La tarjeta **enp0s8** en modo **NAT** permitiendo salida a Internet tomando direcciones como 10.0.2.15 con GW 10.0.2.2
* La tarjeta **enp0s9** en modo **Host-only-network (Red solo anfitrión)** de modo que se puedan comunicar entre si las VMS y también con el Host Anfitrion. Tipicamente la dirección de la VM es 192.168.56.5 y la del Host Anfitrion 192.168.56.2

## Direccionamiento IP

* Host Anfitrión 192.168.56.3
* AMN 192.168.56.7 y 10.0.2.15 con GW 10.0.2.2
* srv1 192.168.56.5 y 10.0.2.15 con GW 10.0.2.2
* srv2 192.168.56.6 y 10.0.2.15 con GW 10.0.2.2
* srv3 192.168.56.8 y 10.0.2.15 con GW 10.0.2.2
* srv-template 192.168.56.9 y 10.0.2.15 con GW 10.0.2.2


