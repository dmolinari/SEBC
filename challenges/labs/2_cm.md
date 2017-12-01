#2_cm.md

3.	Configurar Properties
```
sudo vi /etc/cloudera-scm-agent/config.ini
change -->  server_host=10.0.3.4

sudo vi /etc/cloudera-scm-server/db.properties
com.cloudera.cmf.db.type=mysql
com.cloudera.cmf.db.host=10.0.3.4
com.cloudera.cmf.db.name=cmf
com.cloudera.cmf.db.user=cmf
com.cloudera.cmf.db.password=cmf_password
com.cloudera.cmf.db.setupType=EXTERNAL

```

4. 	Start Agent & Server
```
sudo service cloudera-scm-agent start
sudo service cloudera-scm-server Start

[dmolinari@yakko opt]$ sudo service cloudera-scm-agent start
Starting cloudera-scm-agent (via systemctl):               [  OK  ]
[dmolinari@yakko opt]$ sudo service cloudera-scm-server start
Starting cloudera-scm-server (via systemctl):              [  OK  ]



```

-----