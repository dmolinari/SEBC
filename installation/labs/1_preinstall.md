# 1_preinstall.md

* Selecciona la Opción -->  path B - Instalación

Para este laboratorio, tenemos 4 nodos para crear un cluster de Hadoop (Cloudera) 

siberiano.southcentralus.cloudapp.azure.com  - host1 -> Cloudera Manager Node
siames.southcentralus.cloudapp.azure.com - host2
persa.southcentralus.cloudapp.azure.com - host3
bengala.southcentralus.cloudapp.azure.com - host4

Liga de referencia --> http://blog.puneethabm.in/hadoop-cloudera-cluster-set-up/

* yum update  (Todas las Instancias)

* 1. Check vm.swappiness on all your nodes

```
Set the value to 1 if necessary

echo 1 > /proc/sys/vm/swappiness
echo "vm.swappiness = 1" >> /etc/sysctl.conf

    [root@siberiano dmolinari]# echo 1 > /proc/sys/vm/swappiness
    [root@siberiano dmolinari]# echo "vm.swappiness = 1" >> /etc/sysctl.conf

----
```

* 2. Show the mount attributes of your volume(s)

```
[root@siberiano dmolinari]# dmesg | grep SCSI

[    0.441086] SCSI subsystem initialized
[    1.020134] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 251)
[    2.458466] sd 3:0:1:0: [sdb] Attached SCSI disk
[    2.488702] sd 2:0:0:0: [sda] Attached SCSI disk
[    2.549220] sd 5:0:0:0: [sdc] Attached SCSI disk

----
[root@siberiano dmolinari]# sudo -i blkid

/dev/sdb1: UUID="fd2621ad-04c0-4087-969f-540ad9d039f4" TYPE="ext4" 
/dev/sda1: UUID="d912257f-23c7-4c23-8449-3f6987105a35" TYPE="xfs" 
/dev/sda2: UUID="8e1ff763-5fa2-47f3-91a4-af554468bd38" TYPE="xfs" 
		
----
[root@siberiano dmolinari]# sudo mkfs.ext4 /dev/sdc
		
mke2fs 1.42.9 (28-Dec-2013)
/dev/sdc is entire device, not just one partition!
Proceed anyway? (y,n) y
Discarding device blocks: done                            
Filesystem label=
OS type: Linux
Block size=4096 (log=2)
Fragment size=4096 (log=2)
Stride=0 blocks, Stripe width=0 blocks
5242880 inodes, 20971520 blocks
1048576 blocks (5.00%) reserved for the super user
First data block=0
Maximum filesystem blocks=2168455168
640 block groups
32768 blocks per group, 32768 fragments per group
8192 inodes per group
Superblock backups stored on blocks: 
    32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
    4096000, 7962624, 11239424, 20480000

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done   

----
[root@siberiano dmolinari]# cd /
[root@siberiano /]# mkdir /disco1
[root@siberiano /]# mount /dev/sdc /disco1
[root@siberiano /]# echo "/dev/sdc /disco1 ext4 defaults,noatime 0" >> /etc/fstab
[root@siberiano /]# mount -o remount /disco1

----
[root@siberiano disco1]# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdc         79G   57M   75G   1% /disco1
```
NOTA: Se Adjunto un solo disco por uso de la suscripción.

------
* 3. If you have ext-based volumes, list the reserve space setting
XFS volumes do not support reserve space

```
sudo mv opt opt.bak
sudo ln -s /disco1/opt /opt

mkdir opt
chmod 777 opt
cd /
sudo mv opt opt.bak
sudo ln -s /disco1/opt /opt

[root@siberiano disco1]# mkdir opt
[root@siberiano disco1]# chmod 777 opt
[root@siberiano disco1]# cd /
[root@siberiano /]# sudo mv opt opt.bak
[root@siberiano /]# sudo ln -s /disco1/opt /opt

lrwxrwxrwx.   1 root root   11 Nov 29 19:58 opt -> /disco1/opt

sudo cp -Rp /var/log /disco1
sudo mv /var/log /var/log.bak
sudo ln -s /disco1/log /var/log

[root@siberiano /]# sudo cp -Rp /var/log /disco1
[root@siberiano /]# cd /disco1
[root@siberiano disco1]# chmod 777 log
[root@siberiano disco1]# cd log
[root@siberiano log]# cd /
[root@siberiano /]#  sudo mv /var/log /var/log.bak
[root@siberiano /]# sudo ln -s /disco1/log /var/log

lrwxrwxrwx.  1 root root   11 Nov 29 20:01 log -> /disco1/log
```

* 4. Disable transparent hugepage support

```
cat /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/enabled
cat /sys/kernel/mm/transparent_hugepage/enabled
	  
vi /etc/rc.d/rc.local
   echo never > /sys/kernel/mm/transparent_hugepage/enabled
   echo never > /sys/kernel/mm/transparent_hugepage/defrag
chmod a+x /etc/rc.d/rc.local && sudo /etc/rc.d/rc.local 

[root@siberiano dmolinari]# cat /sys/kernel/mm/transparent_hugepage/enabled
[always] madvise never
[root@siberiano dmolinari]# echo never > /sys/kernel/mm/transparent_hugepage/enabled
[root@siberiano dmolinari]# cat /sys/kernel/mm/transparent_hugepage/enabled
always madvise [never]
[root@siberiano dmolinari]# vi /etc/rc.d/rc.local
[root@siberiano dmolinari]# chmod a+x /etc/rc.d/rc.local && sudo /etc/rc.d/rc.local 
```

* 5. List your network interface configuration

```
#vim /etc/sysconfig/network
NETWORKING=yes
HOSTNAME=host1.example.com  <-- Nodo
GATEWAY=192.168.1.1 <-- NO APLICA

#hostname host1.example.com
```

```
#vim /etc/sysctl.conf
#Disable IPv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

----

#vim /etc/sysconfig/network-scripts/ifcfg-eth0
NETWORKING_IPV6=no
IPV6INIT=no

----


```

* 6. Show that forward and reverse host lookups are correctly resolved

For /etc/hosts, use getent
For DNS, use nslookup

NOTA: se instaló en un servidor, un servicio de dns (dnsmasq.service) y se configuró para su uso.

```
Host --> Servidor bengala 

En Bengala:

sudo systemctl start dnsmasq.service 
systemctl enable dnsmasq.service

vi /etc/hosts
10.0.2.4    siberiano.southcentralus.cloudapp.azure.com     siberiano 	
10.0.2.5    siames.southcentralus.cloudapp.azure.com        siames
10.0.2.6    persa.southcentralus.cloudapp.azure.com         persa
10.0.2.7    bengala.southcentralus.cloudapp.azure.com       bengala

vi /etc/hostname (Todos los Servidores)  o el nmtui (Hostname)
FQDN de cada server

/etc/resolv.conf  (Todos los servidores)
Add servername (IP INTERNA DE BENGALA)
nameserver 10.0.2.7   ----->> apuntan a la maquina donde se puso el dnsmasq


Test --> nslookup <Server>

```


* 7. Show the nscd service is running

```
yum install nscd
service nscd start
systemctl start  nscd
systemctl status nscd
```

* 8. Show the ntpd service is running

```
yum install ntp
service ntpd start
systemctl start ntpd
systemctl status ntpd
```

--------------
