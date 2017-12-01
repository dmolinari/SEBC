# 1_precheck.md

NOTA: Otras consideraciones previas para la instalación de Cloudera

*Other Pre-Install

* 1. SELinux (Security-Enhanced Linux)

Disable SELINUX

```
sudo vi /etc/selinux/config
SELINUX=disabled
sestatus

NOTA --> Reiniciar Server

----

#setenforce 0
#vim /etc/sysconfig/selinux
SELINUX=disabled

```

* 2. Disable and Enable RHEL7 firewall

```
systemctl status firewalld
systemctl stop firewalld
systemctl disable firewalld

----

Check the status with the below command

#/etc/init.d/iptables status
iptables: Firewall is not running.

----

If the firewall is running, then stop IPtables as below:
# /etc/init.d/iptables save
# /etc/init.d/iptables stop
# chkconfig iptables off

```

* 3. Deshabilitar Tuned  (for RHEL 7)

```
systemctl status tuned
systemctl stop tuned
systemctl disable tuned
```

* 4. Disabling chrony  (for RHEL 7)
```
systemctl status chronyd
systemctl stop chronyd
systemctl disable chronyd
```

* 5. Memory
If you are doing a lot of streaming, set vm.overcommit_memory kernel parameter to “1”.
```
#sysctl vm.overcommit_memory=1
#echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf
```

-------

