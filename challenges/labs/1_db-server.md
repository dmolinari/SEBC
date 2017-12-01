# 1_db-server.md

Start the database service and create these databases

    scm
    rman
    hive
    oozie
    hue


script
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
create database scm DEFAULT CHARACTER SET utf8;
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'scm_password';
```


Record the following in challenges/labs/1_db-server.md

    A command and output that shows the hostname of your database server
    A command and output that reports the database server version
    A command and output that lists all the databases in the server


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
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
14 rows in set (0.00 sec)
```


```
mysql> select * from information_schema.user_privileges;
+--------------------------------------------------+---------------+-------------------------+--------------+
| GRANTEE                                          | TABLE_CATALOG | PRIVILEGE_TYPE          | IS_GRANTABLE |
+--------------------------------------------------+---------------+-------------------------+--------------+
| 'root'@'localhost'                               | def           | SELECT                  | YES          |
| 'root'@'localhost'                               | def           | INSERT                  | YES          |
| 'root'@'localhost'                               | def           | UPDATE                  | YES          |
| 'root'@'localhost'                               | def           | DELETE                  | YES          |
| 'root'@'localhost'                               | def           | CREATE                  | YES          |
| 'root'@'localhost'                               | def           | DROP                    | YES          |
| 'root'@'localhost'                               | def           | RELOAD                  | YES          |
| 'root'@'localhost'                               | def           | SHUTDOWN                | YES          |
| 'root'@'localhost'                               | def           | PROCESS                 | YES          |
| 'root'@'localhost'                               | def           | FILE                    | YES          |
| 'root'@'localhost'                               | def           | REFERENCES              | YES          |
| 'root'@'localhost'                               | def           | INDEX                   | YES          |
| 'root'@'localhost'                               | def           | ALTER                   | YES          |
| 'root'@'localhost'                               | def           | SHOW DATABASES          | YES          |
| 'root'@'localhost'                               | def           | SUPER                   | YES          |
| 'root'@'localhost'                               | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'localhost'                               | def           | LOCK TABLES             | YES          |
| 'root'@'localhost'                               | def           | EXECUTE                 | YES          |
| 'root'@'localhost'                               | def           | REPLICATION SLAVE       | YES          |
| 'root'@'localhost'                               | def           | REPLICATION CLIENT      | YES          |
| 'root'@'localhost'                               | def           | CREATE VIEW             | YES          |
| 'root'@'localhost'                               | def           | SHOW VIEW               | YES          |
| 'root'@'localhost'                               | def           | CREATE ROUTINE          | YES          |
| 'root'@'localhost'                               | def           | ALTER ROUTINE           | YES          |
| 'root'@'localhost'                               | def           | CREATE USER             | YES          |
| 'root'@'localhost'                               | def           | EVENT                   | YES          |
| 'root'@'localhost'                               | def           | TRIGGER                 | YES          |
| 'root'@'localhost'                               | def           | CREATE TABLESPACE       | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | SELECT                  | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | INSERT                  | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | UPDATE                  | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | DELETE                  | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | CREATE                  | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | DROP                    | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | RELOAD                  | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | SHUTDOWN                | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | PROCESS                 | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | FILE                    | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | REFERENCES              | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | INDEX                   | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | ALTER                   | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | SHOW DATABASES          | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | SUPER                   | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | LOCK TABLES             | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | EXECUTE                 | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | REPLICATION SLAVE       | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | REPLICATION CLIENT      | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | CREATE VIEW             | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | SHOW VIEW               | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | CREATE ROUTINE          | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | ALTER ROUTINE           | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | CREATE USER             | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | EVENT                   | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | TRIGGER                 | YES          |
| 'root'@'yakko.southcentralus.cloudapp.azure.com' | def           | CREATE TABLESPACE       | YES          |
| 'root'@'127.0.0.1'                               | def           | SELECT                  | YES          |
| 'root'@'127.0.0.1'                               | def           | INSERT                  | YES          |
| 'root'@'127.0.0.1'                               | def           | UPDATE                  | YES          |
| 'root'@'127.0.0.1'                               | def           | DELETE                  | YES          |
| 'root'@'127.0.0.1'                               | def           | CREATE                  | YES          |
| 'root'@'127.0.0.1'                               | def           | DROP                    | YES          |
| 'root'@'127.0.0.1'                               | def           | RELOAD                  | YES          |
| 'root'@'127.0.0.1'                               | def           | SHUTDOWN                | YES          |
| 'root'@'127.0.0.1'                               | def           | PROCESS                 | YES          |
| 'root'@'127.0.0.1'                               | def           | FILE                    | YES          |
| 'root'@'127.0.0.1'                               | def           | REFERENCES              | YES          |
| 'root'@'127.0.0.1'                               | def           | INDEX                   | YES          |
| 'root'@'127.0.0.1'                               | def           | ALTER                   | YES          |
| 'root'@'127.0.0.1'                               | def           | SHOW DATABASES          | YES          |
| 'root'@'127.0.0.1'                               | def           | SUPER                   | YES          |
| 'root'@'127.0.0.1'                               | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'127.0.0.1'                               | def           | LOCK TABLES             | YES          |
| 'root'@'127.0.0.1'                               | def           | EXECUTE                 | YES          |
| 'root'@'127.0.0.1'                               | def           | REPLICATION SLAVE       | YES          |
| 'root'@'127.0.0.1'                               | def           | REPLICATION CLIENT      | YES          |
| 'root'@'127.0.0.1'                               | def           | CREATE VIEW             | YES          |
| 'root'@'127.0.0.1'                               | def           | SHOW VIEW               | YES          |
| 'root'@'127.0.0.1'                               | def           | CREATE ROUTINE          | YES          |
| 'root'@'127.0.0.1'                               | def           | ALTER ROUTINE           | YES          |
| 'root'@'127.0.0.1'                               | def           | CREATE USER             | YES          |
| 'root'@'127.0.0.1'                               | def           | EVENT                   | YES          |
| 'root'@'127.0.0.1'                               | def           | TRIGGER                 | YES          |
| 'root'@'127.0.0.1'                               | def           | CREATE TABLESPACE       | YES          |
| 'root'@'::1'                                     | def           | SELECT                  | YES          |
| 'root'@'::1'                                     | def           | INSERT                  | YES          |
| 'root'@'::1'                                     | def           | UPDATE                  | YES          |
| 'root'@'::1'                                     | def           | DELETE                  | YES          |
| 'root'@'::1'                                     | def           | CREATE                  | YES          |
| 'root'@'::1'                                     | def           | DROP                    | YES          |
| 'root'@'::1'                                     | def           | RELOAD                  | YES          |
| 'root'@'::1'                                     | def           | SHUTDOWN                | YES          |
| 'root'@'::1'                                     | def           | PROCESS                 | YES          |
| 'root'@'::1'                                     | def           | FILE                    | YES          |
| 'root'@'::1'                                     | def           | REFERENCES              | YES          |
| 'root'@'::1'                                     | def           | INDEX                   | YES          |
| 'root'@'::1'                                     | def           | ALTER                   | YES          |
| 'root'@'::1'                                     | def           | SHOW DATABASES          | YES          |
| 'root'@'::1'                                     | def           | SUPER                   | YES          |
| 'root'@'::1'                                     | def           | CREATE TEMPORARY TABLES | YES          |
| 'root'@'::1'                                     | def           | LOCK TABLES             | YES          |
| 'root'@'::1'                                     | def           | EXECUTE                 | YES          |
| 'root'@'::1'                                     | def           | REPLICATION SLAVE       | YES          |
| 'root'@'::1'                                     | def           | REPLICATION CLIENT      | YES          |
| 'root'@'::1'                                     | def           | CREATE VIEW             | YES          |
| 'root'@'::1'                                     | def           | SHOW VIEW               | YES          |
| 'root'@'::1'                                     | def           | CREATE ROUTINE          | YES          |
| 'root'@'::1'                                     | def           | ALTER ROUTINE           | YES          |
| 'root'@'::1'                                     | def           | CREATE USER             | YES          |
| 'root'@'::1'                                     | def           | EVENT                   | YES          |
| 'root'@'::1'                                     | def           | TRIGGER                 | YES          |
| 'root'@'::1'                                     | def           | CREATE TABLESPACE       | YES          |
| ''@'localhost'                                   | def           | USAGE                   | NO           |
| ''@'yakko.southcentralus.cloudapp.azure.com'     | def           | USAGE                   | NO           |
| 'oozie'@'%'                                      | def           | USAGE                   | NO           |
| 'cmf'@'%'                                        | def           | USAGE                   | NO           |
| 'nav'@'%'                                        | def           | USAGE                   | NO           |
| 'sentry'@'%'                                     | def           | USAGE                   | NO           |
| 'hive'@'%'                                       | def           | USAGE                   | NO           |
| 'rman'@'%'                                       | def           | USAGE                   | NO           |
| 'amon'@'%'                                       | def           | USAGE                   | NO           |
| 'navms'@'%'                                      | def           | USAGE                   | NO           |
| 'hue'@'%'                                        | def           | USAGE                   | NO           |
| 'scm'@'%'                                        | def           | USAGE                   | NO           |
+--------------------------------------------------+---------------+-------------------------+--------------+
124 rows in set (0.01 sec)

```


```
mysql> select host, user, password from mysql.user;
+-----------------------------------------+--------+-------------------------------------------+
| host                                    | user   | password                                  |
+-----------------------------------------+--------+-------------------------------------------+
| localhost                               | root   | *C00923B5D969E1E760A7A2691A5BFBB90A9DDBA1 |
| yakko.southcentralus.cloudapp.azure.com | root   | *C00923B5D969E1E760A7A2691A5BFBB90A9DDBA1 |
| 127.0.0.1                               | root   | *C00923B5D969E1E760A7A2691A5BFBB90A9DDBA1 |
| ::1                                     | root   | *C00923B5D969E1E760A7A2691A5BFBB90A9DDBA1 |
| %                                       | rman   | *AEF345BFE495D8E678EA9D3D5708FD110AD2F08E |
| %                                       | amon   | *4A1243A12C2625553EC0465DD4E640DB056AA07A |
| %                                       | hive   | *8AC2E431CC7A9F2C4C0E51A65B8D8175892D9F22 |
| %                                       | sentry | *280BBCEE7F3B500690296588CF09BB9FB3EEED65 |
| %                                       | nav    | *993A16D875A9AB1932CC2F57E7DADA76AD35C3B2 |
| %                                       | navms  | *BDD853AE26302113E4802B6FBDCC632507C782FD |
| %                                       | cmf    | *19C647DAF55667DB9C1DB7C9264BF762A641854F |
| %                                       | hue    | *48CA895A732F0533DB860DAC8736FEB069B42912 |
| %                                       | oozie  | *81A1BB46F79EBD0AA76E6EFAA31D62458CFCAF62 |
| %                                       | scm    | *E2D6A4ADCCA7B38098E85EAF9BB785AB21451139 |
+-----------------------------------------+--------+-------------------------------------------+
14 rows in set (0.00 sec
```