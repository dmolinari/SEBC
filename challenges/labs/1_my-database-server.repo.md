

#1_db-server.md

Challenge 1: Install a MySQL server

Create the Issue Install MySQL if you are using RHEL/Centos 6.x - Name it Install MariaDB if you are using RHEL/CentOS 7.x

NOTA: voy a instalar MySQL 5.7 desde RPM

1. Install JAVA
```
[dmolinari@yakko opt]$ java -version
java version "1.8.0_151"
Java(TM) SE Runtime Environment (build 1.8.0_151-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.151-b12, mixed mode)
```

2. Descargar Instalador & Driver --> /opt
```
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.44.tar.gz
```

3. Instalar MySQL
```
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum update
sudo yum install mysql-server
sudo systemctl start mysqld
systemctl status mysqld
```

4. Copiar Driver a Ubicación de CM  (Todos los Servidores)
```
[dmolinari@dotsebc java]$ pwd
/usr/share/java
[dmolinari@dotsebc java]$ ll
total 980
-rw-r--r-- 1 root root 999635 Dec  1 16:05 mysql-connector-java.jar
``` 

5. Editar my.cnf
```
[dmolinari@yakko opt]$ cd /etc
[dmolinari@yakko etc]$ sudo vi my.cnf
ADD --> bind_address=0.0.0.0
[dmolinari@yakko etc]$ sudo systemctl restart mysqld
[dmolinari@yakko etc]$ sudo systemctl status mysqld
```

6. Set the MySQL root password. In the following example, the current root password is blank. Press the Enter key when you're prompted for the root password. 
```
[dmolinari@yakko etc]$ sudo /usr/bin/mysql_secure_installation
Set root password? [Y/n] Y
Remove anonymous users? [Y/n] Y
Disallow root login remotely? [Y/n] n
Remove test database and access to it? [Y/n] Y
Reload privilege tables now? [Y/n] n
```
