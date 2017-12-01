5_Kerveros.md




Install an MIT KDC on the second node in your cluster 

```
[dmolinari@wakko opt]$ sudo yum -y install krb5-server krb5-libs krb5-auth-dialog krb5-workstation
[saturn@yakko hadoop-mapreduce]$ sudo yum -y install krb5-workstation krb5-libs krb5-auth-dialog
[dmolinari@dotsebc java]$ sudo yum -y install krb5-workstation krb5-libs krb5-auth-dialog
[dmolinari@skippy opt]$ sudo yum -y install krb5-workstation krb5-libs krb5-auth-dialog
```


Name your realm after your GitHub handle
Use HQ as a suffix
For example: RSTOKES.HQ

```
[root@wakko opt]# vi /var/kerberos/krb5kdc/kdc.conf

[kdcdefaults]
 kdc_ports = 88
 kdc_tcp_ports = 88

[realms]
 DMOLINARI.HQ = {
  #master_key_type = aes256-cts
  acl_file = /var/kerberos/krb5kdc/kadm5.acl
  dict_file = /usr/share/dict/words
  admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab
  supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal camellia256-cts:normal camellia128-cts:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal
 }
```

* vi /etc/krb5.conf

```
[libdefaults]
 default_realm = DMOLINARI.HQ
 dns_lookup_realm = false
 dns_lookup_kdc = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 udp_preference_limit = 1
 default_tgs_enctypes = arcfour-hmac
 default_tkt_enctypes = arcfour-hmac 


[realms] 
  DMOLINARI.HQ = {
  kdc = wakko.southcentralus.cloudapp.azure.com
  admin_server = wakko.southcentralus.cloudapp.azure.com
 }

[domain_realm]
 .southcentralus.cloudapp.azure.com = DMOLINARI.HQ
 southcentralus.cloudapp.azure.com = DMOLINARI.HQ
```

[root@wakko opt]# /usr/sbin/kdb5_util create -s
```
Loading random data
Initializing database '/var/kerberos/krb5kdc/principal' for realm 'DMOLINARI.HQ',
master key name 'K/M@DMOLINARI.HQ'
You will be prompted for the database Master Password.
It is important that you NOT FORGET this password.
Enter KDC database master key: 
Re-enter KDC database master key to verify: 

```


-----

[root@wakko opt]# kadmin.local
Authenticating as principal root/admin@DMOLINARI.HQ with password.
```
addprinc cloudera-scm@DMOLINARI.HQ
addprinc saturn@DMOLINARI.HQ
addprinc haley@DMOLINARI.HQ
```

```
[root@wakko opt]# kadmin.local
Authenticating as principal root/admin@DMOLINARI.HQ with password.
kadmin.local:  addprinc cloudera-scm@DMOLINARI.HQ
WARNING: no policy specified for cloudera-scm@DMOLINARI.HQ; defaulting to no policy
Enter password for principal "cloudera-scm@DMOLINARI.HQ": 
Re-enter password for principal "cloudera-scm@DMOLINARI.HQ": 
Principal "cloudera-scm@DMOLINARI.HQ" created.
kadmin.local:  addprinc saturn@DMOLINARI.HQ
WARNING: no policy specified for saturn@DMOLINARI.HQ; defaulting to no policy
Enter password for principal "saturn@DMOLINARI.HQ": 
Re-enter password for principal "saturn@DMOLINARI.HQ": 
Principal "saturn@DMOLINARI.HQ" created.
kadmin.local:  addprinc haley@DMOLINARI.HQ
WARNING: no policy specified for haley@DMOLINARI.HQ; defaulting to no policy
Enter password for principal "haley@DMOLINARI.HQ": 
Re-enter password for principal "haley@DMOLINARI.HQ": 
Principal "haley@DMOLINARI.HQ" created.
kadmin.local:  exit
```


dmolinari


-----

cloudera-scm@DMOLINARI.HQ admilc
saturn@DMOLINARI.HQ admilc
haley@DMOLINARI.HQ admilc


[root@wakko opt]# service krb5kdc start
```
Redirecting to /bin/systemctl start krb5kdc.service
[root@wakko opt]# service kadmin start
Redirecting to /bin/systemctl start kadmin.service
[root@wakko opt]# systemctl status krb5kdc.service
● krb5kdc.service - Kerberos 5 KDC
   Loaded: loaded (/usr/lib/systemd/system/krb5kdc.service; disabled; vendor preset: disabled)
   Active: active (running) since Fri 2017-12-01 19:24:15 UTC; 1min 20s ago
  Process: 70133 ExecStart=/usr/sbin/krb5kdc -P /var/run/krb5kdc.pid $KRB5KDC_ARGS (code=exited, status=0/SUCCESS)
 Main PID: 70134 (krb5kdc)
   CGroup: /system.slice/krb5kdc.service
           └─70134 /usr/sbin/krb5kdc -P /var/run/krb5kdc.pid

Dec 01 19:24:15 wakko.southcentralus.cloudapp.azure.com systemd[1]: Starting Kerberos 5 KDC...
Dec 01 19:24:15 wakko.southcentralus.cloudapp.azure.com systemd[1]: PID file /var/run/krb5kdc.pid not re....
Dec 01 19:24:15 wakko.southcentralus.cloudapp.azure.com systemd[1]: Started Kerberos 5 KDC.
Hint: Some lines were ellipsized, use -l to show in full.
```


[root@wakko opt]# systemctl status kadmin.service
```
● kadmin.service - Kerberos 5 Password-changing and Administration
   Loaded: loaded (/usr/lib/systemd/system/kadmin.service; disabled; vendor preset: disabled)
   Active: active (running) since Fri 2017-12-01 19:24:58 UTC; 1min 1s ago
  Process: 70217 ExecStart=/usr/sbin/_kadmind -P /var/run/kadmind.pid $KADMIND_ARGS (code=exited, status=0/SUCCESS)
 Main PID: 70218 (kadmind)
   CGroup: /system.slice/kadmin.service
           └─70218 /usr/sbin/kadmind -P /var/run/kadmind.pid

Dec 01 19:24:57 wakko.southcentralus.cloudapp.azure.com systemd[1]: Starting Kerberos 5 Password-changin....
Dec 01 19:24:58 wakko.southcentralus.cloudapp.azure.com systemd[1]: Started Kerberos 5 Password-changing....
Hint: Some lines were ellipsized, use -l to show in full.
```


