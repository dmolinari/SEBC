# MYSQL - INSTALL

2_mysql_install.md
2_replica_working.md

==================================================================================================================

MySQL/MariaDB Installation Lab
Configure MySQL with a replica server
The steps below are MySQL-specific. If you are using RHEL/CentOS 7.x

==================================================================================================================

* 1. Install JAVA

```
Descargar jdk-8u151-linux-x64.tar.gz  from http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
Copiar a todos los servidores /opt

cd /opt
chmod 777 jdk-8u151-linux-x64.tar.gz 
tar -xzvf jdk-8u151-linux-x64.tar.gz

sudo su
cd /usr
mkdir java
cd java
cp -Rp /opt/jdk1.8.0_151 
```


```
alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_151/bin/java 2
alternatives --config java

alternatives --install /usr/bin/jar jar /usr/java/jdk1.8.0_151/bin/jar 2
alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_151/bin/javac 2
alternatives --set jar /usr/java/jdk1.8.0_151/bin/jar
alternatives --set javac /usr/java/jdk1.8.0_151/bin/javac
```

```
vi /etc/profile
Add this lines -->
    export JAVA_HOME=/usr/java/jdk1.8.0_151
    export JRE_HOME=/usr/java/jdk1.8.0_151/jre
    export PATH=$PATH:/usr/java/jdk1.8.0_151/bin:/usr/java/jdk1.8.0_151/jre/bin
```

```
crear archivo java.sh
     mkdir /etc/profile.d/java.sh
     vi /etc/profile.d/java.sh

y agregar las siguientes lineas
    export JAVA_HOME=/opt/jdk1.8.0_151
    export JRE_HOME=/opt/jdk1.8.0_151/jre
    export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
```

TEST:
```
[dmolinari@siberiano opt]$ java -version
    java version "1.8.0_151"
    Java(TM) SE Runtime Environment (build 1.8.0_151-b12)
    Java HotSpot(TM) 64-Bit Server VM (build 25.151-b12, mixed mode)
```

* 2. Descargar Instalador & Driver 

```
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.44.tar.gz
```

* 3. Instalar MySQL
```
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum update
sudo yum install mysql-server
sudo systemctl start mysqld
```

* 4. Copiar Driver a Ubicación de CM
```
cd /opt
tar zxvf mysql-connector-java-5.1.44.tar.gz
cd /usr/share
sudo mkdir java
cd /opt
sudo cp mysql-connector-java-5.1.44/mysql-connector-java-5.1.44-bin.jar /usr/share/java/mysql-connector-java.jar
```

* 5. Editar my.cnf
```
cd /etc
sudo vi my.cnf
ADD --> bind_address=0.0.0.0
```

* 6. Set the MySQL root password. In the following example, the current root password is blank. Press the Enter key when you're prompted for the root password. 
```
sudo /usr/bin/mysql_secure_installation
Set root password? [Y/n] Y
Remove anonymous users? [Y/n] Y
Disallow root login remotely? [Y/n] n
Remove test database and access to it? [Y/n] Y
Reload privilege tables now? [Y/n] Y
```

* 7. Create Tables for CM
mysql -u root -p
```
create database amon DEFAULT CHARACTER SET utf8;
grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_password';
create database rman DEFAULT CHARACTER SET utf8;
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';
create database metastore DEFAULT CHARACTER SET utf8;
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
create database sentry DEFAULT CHARACTER SET utf8;
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';
create database nav DEFAULT CHARACTER SET utf8;
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav_password';
create database navms DEFAULT CHARACTER SET utf8;
grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms_password';
create database cmf DEFAULT CHARACTER SET utf8;
grant all on cmf.* TO 'cmf'@'%' IDENTIFIED BY 'cmf_password';
create database hue DEFAULT CHARACTER SET utf8;
grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'hue_password';
create database hive DEFAULT CHARACTER SET utf8;
grant all on hive.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
create database oozie DEFAULT CHARACTER SET utf8;
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'oozie_password';
```

TEST:
```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| amon               |
| cmf                |
| hive               |
| hue                |
| metastore          |
| mysql              |
| nav                |
| navms              |
| performance_schema |
| rman               |
| sentry             |
+--------------------+
12 rows in set (0.00 sec)

----

mysql> select host, user, password from mysql.user;
+-----------+--------+-------------------------------------------+
| host      | user   | password                                  |
+-----------+--------+-------------------------------------------+
| localhost | root   | *7F89E2FA606FD55D13651DE170A9B23848358C7A |
| siberiano | root   | *7F89E2FA606FD55D13651DE170A9B23848358C7A |
| 127.0.0.1 | root   | *7F89E2FA606FD55D13651DE170A9B23848358C7A |
| ::1       | root   | *7F89E2FA606FD55D13651DE170A9B23848358C7A |
| %         | root   | *7F89E2FA606FD55D13651DE170A9B23848358C7A |
| %         | amon   | *4A1243A12C2625553EC0465DD4E640DB056AA07A |
| %         | rman   | *AEF345BFE495D8E678EA9D3D5708FD110AD2F08E |
| %         | hive   | *8AC2E431CC7A9F2C4C0E51A65B8D8175892D9F22 |
| %         | sentry | *280BBCEE7F3B500690296588CF09BB9FB3EEED65 |
| %         | nav    | *993A16D875A9AB1932CC2F57E7DADA76AD35C3B2 |
| %         | navms  | *BDD853AE26302113E4802B6FBDCC632507C782FD |
| %         | cmf    | *19C647DAF55667DB9C1DB7C9264BF762A641854F |
| %         | hue    | *8AC2E431CC7A9F2C4C0E51A65B8D8175892D9F22 |
+-----------+--------+-------------------------------------------+
13 rows in set (0.00 sec)

```