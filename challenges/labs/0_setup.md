#0_setup.md

* List the cloud provider you are using

```
Microsoft Azure
```


* List your instances by IP address and DNS name
```
External IP     Internal IP     ServerName
23.98.218.170   10.0.3.4        yakko.southcentralus.cloudapp.azure.com
104.210.159.166 10.0.3.5        wakko.southcentralus.cloudapp.azure.com
13.85.69.150    10.0.3.6        dotsebc.southcentralus.cloudapp.azure.com
13.85.68.145    10.0.3.7        skippy.southcentralus.cloudapp.azure.com
```


* List the Linux release you are using
```
Red Hat Enterprise Linux 7.2
```

* List the file system capacity for the first node
```
Standard DS4 v2 Promo (8 vcpu, 28 GB de memoria)

+ 2 discos de 80 GB

```

* List the command and output for yum repolist enabled
```
[dmolinari@yakko opt]$ yum repolist enabled
Loaded plugins: langpacks, product-id, search-disabled-repos
Repo rhui-rhel-7-server-dotnet-rhui-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-dotnet-rhui-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-dotnet-rhui-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-dotnet-rhui-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-dotnet-rhui-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-dotnet-rhui-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-extras-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-extras-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-extras-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-extras-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-extras-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-extras-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-optional-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-optional-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-optional-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-optional-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-optional-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-optional-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-rh-common-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-rh-common-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-rh-common-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-rh-common-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-rh-common-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-rh-common-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-supplementary-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-supplementary-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-supplementary-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-supplementary-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-7-server-rhui-supplementary-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-7-server-rhui-supplementary-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-server-rhui-rhscl-7-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-server-rhui-rhscl-7-debug-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-server-rhui-rhscl-7-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-server-rhui-rhscl-7-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem
Repo rhui-rhel-server-rhui-rhscl-7-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/product/content.crt
Repo rhui-rhel-server-rhui-rhscl-7-source-rpms forced skip_if_unavailable=True due to: /etc/pki/rhui/key.pem




repo id                                                           repo name       status
!rhui-microsoft-azure-rhel7                                       Microsoft Azure      2
!rhui-rhel-7-server-dotnet-rhui-debug-rpms/7Server/x86_64         dotNET on RHEL      27
!rhui-rhel-7-server-dotnet-rhui-rpms/7Server/x86_64               dotNET on RHEL      63
!rhui-rhel-7-server-dotnet-rhui-source-rpms/7Server/x86_64        dotNET on RHEL      32
!rhui-rhel-7-server-rhui-debug-rpms/7Server/x86_64                Red Hat Enterpr  6,382
!rhui-rhel-7-server-rhui-extras-debug-rpms/x86_64                 Red Hat Enterpr    126
!rhui-rhel-7-server-rhui-extras-rpms/x86_64                       Red Hat Enterpr    709
!rhui-rhel-7-server-rhui-extras-source-rpms/x86_64                Red Hat Enterpr    276
!rhui-rhel-7-server-rhui-optional-debug-rpms/7Server/x86_64       Red Hat Enterpr  4,263
!rhui-rhel-7-server-rhui-optional-rpms/7Server/x86_64             Red Hat Enterpr 13,030
!rhui-rhel-7-server-rhui-optional-source-rpms/7Server/x86_64      Red Hat Enterpr  3,038
!rhui-rhel-7-server-rhui-rh-common-debug-rpms/7Server/x86_64      Red Hat Enterpr     31
!rhui-rhel-7-server-rhui-rh-common-rpms/7Server/x86_64            Red Hat Enterpr    228
!rhui-rhel-7-server-rhui-rh-common-source-rpms/7Server/x86_64     Red Hat Enterpr     89
!rhui-rhel-7-server-rhui-rpms/7Server/x86_64                      Red Hat Enterpr 17,720
!rhui-rhel-7-server-rhui-source-rpms/7Server/x86_64               Red Hat Enterpr  5,185
!rhui-rhel-7-server-rhui-supplementary-debug-rpms/7Server/x86_64  Red Hat Enterpr      0
!rhui-rhel-7-server-rhui-supplementary-rpms/7Server/x86_64        Red Hat Enterpr    238
!rhui-rhel-7-server-rhui-supplementary-source-rpms/7Server/x86_64 Red Hat Enterpr      8
!rhui-rhel-server-rhui-rhscl-7-debug-rpms/7Server/x86_64          Red Hat Softwar    570
!rhui-rhel-server-rhui-rhscl-7-rpms/7Server/x86_64                Red Hat Softwar  9,198
!rhui-rhel-server-rhui-rhscl-7-source-rpms/7Server/x86_64         Red Hat Softwar  3,841
repolist: 65,056
```

-----



Add the following Linux accounts to all nodes 

* User saturn with a UID of 2800
```
sudo useradd -u 2800 saturn
```

* User haley with a UID of 2900
```
sudo useradd -u 2900 haley
```

* Create the group comets and add haley to it
```
sudo groupadd comets
sudo usermod -a -G comets haley
```

* Create the group planets and add saturn to it
```
sudo groupadd planets
sudo usermod -a -G planets saturn
```


* List the /etc/passwd entries for saturn and haley
```
sudo passwd saturn
sudo passwd haley

[dmolinari@yakko opt]$ cat /etc/passwd | grep saturn
[dmolinari@yakko opt]$ cat /etc/passwd | grep haley

haley:x:2900:2900::/home/haley:/bin/bash
saturn:x:2800:2800::/home/saturn:/bin/bash

```


* List the /etc/group entries for comets and planets
```
[dmolinari@yakko opt]$ cat /etc/group | grep comets
comets:x:2901:haley

[dmolinari@yakko opt]$ cat /etc/group | grep planets
planets:x:2902:saturn
```




