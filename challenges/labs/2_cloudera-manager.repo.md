#2_cloudera-manager.repo.md

1. Descargar RPM de CM (Server, Deamon, Agent)
```
wget http://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.12/RPMS/x86_64/cloudera-manager-server-5.12.1-1.cm5121.p0.6.el7.x86_64.rpm
wget http://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.12/RPMS/x86_64/cloudera-manager-daemons-5.12.1-1.cm5121.p0.6.el7.x86_64.rpm
wget http://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.12/RPMS/x86_64/cloudera-manager-agent-5.12.1-1.cm5121.p0.6.el7.x86_64.rpm
```

2. 	Instalar RPM
```
sudo yum --nogpgcheck localinstall cloudera-manager-daemons-*.rpm
sudo yum --nogpgcheck localinstall cloudera-manager-server-*.rpm
sudo yum --nogpgcheck localinstall cloudera-manager-agent-*.x86_64.rpm cloudera-manager-daemons
```

-----