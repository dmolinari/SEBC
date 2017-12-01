
5_krb5.conf.md

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