# 3_cm_installed.md

* 1. Descargar RPM de CM (Server, Deamon, Agent)
```
wget http://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.12/RPMS/x86_64/cloudera-manager-server-5.12.1-1.cm5121.p0.6.el7.x86_64.rpm
wget http://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.12/RPMS/x86_64/cloudera-manager-daemons-5.12.1-1.cm5121.p0.6.el7.x86_64.rpm
wget http://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.12/RPMS/x86_64/cloudera-manager-agent-5.12.1-1.cm5121.p0.6.el7.x86_64.rpm
```

* 2. Instalar RPM
```
sudo yum --nogpgcheck localinstall cloudera-manager-daemons-*.rpm
sudo yum --nogpgcheck localinstall cloudera-manager-server-*.rpm
sudo yum --nogpgcheck localinstall cloudera-manager-agent-*.x86_64.rpm cloudera-manager-daemons
```

* 3. Configurar Properties
```
/etc/cloudera-scm-agent/config.ini 

   sudo vi /etc/cloudera-scm-agent/config.ini 
   change -->  server_host=10.0.2.4

/etc/cloudera-scm-server/db.properties

    sudo vi /etc/cloudera-scm-server/db.properties
    com.cloudera.cmf.db.type=mysql
    com.cloudera.cmf.db.host=10.0.2.4
    com.cloudera.cmf.db.name=cmf
    com.cloudera.cmf.db.user=cmf
    com.cloudera.cmf.db.password=cmf_password
    com.cloudera.cmf.db.setupType=EXTERNAL
```

* 4. Start Agent & Server
```
sudo service cloudera-scm-agent start
sudo service cloudera-scm-server start

systemctl status cloudera-scm-agent
systemctl status cloudera-scm-server
```

-----

* Revisar Hosts

* Revisar Password-Less
```
useradd cloudera
passwd cloudera
cloudera

----

chmod 700 /etc/sudoers.d/waagent
vi /etc/sudoers.d/waagent
Add --> cloudera ALL=NOPASSWD: ALL
```


