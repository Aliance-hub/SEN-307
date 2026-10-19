Microsoft Windows [Version 10.0.26300.9457]
(c) Microsoft Corporation. All rights reserved.

C:\Program Files\MySQL\MySQL Server 26.7\bin>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 26.7.0 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database patrick;
Query OK, 1 row affected (0.052 sec)

mysql> create database SEN307_11367;
Query OK, 1 row affected (0.052 sec)

mysql> show database
    -> /c
    -> \c
mysql> show database
    ->
    ->
    ->
    -> ^C
mysql> select version()
    -> select version();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select version()' at line 2
mysql> select version();
+-----------+
| version() |
+-----------+
| 26.7.0    |
+-----------+
1 row in set (0.008 sec)

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show database();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database()' at line 1
mysql> select current_user();
+----------------+
| current_user() |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.007 sec)

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2026-10-19 15:09:04 |
+---------------------+
1 row in set (0.008 sec)

mysql> status;
--------------
mysql  Ver 26.7.0 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          11
Current database:
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_128_GCM_SHA256
Using delimiter:        ;
Server version:         26.7.0 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 23 min 3 sec

Threads: 6  Questions: 53  Slow queries: 0  Opens: 215  Flush tables: 3  Open tables: 131  Queries per second avg: 0.038
--------------

mysql> show variables like 'port';
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| port          | 3306  |
+---------------+-------+
1 row in set (0.054 sec)

mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> use sen307_11367
Database changed
mysql> select database
    -> ^C
mysql> select database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select database();
+--------------+
| database()   |
+--------------+
| sen307_11367 |
+--------------+
1 row in set (0.007 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sen307_11367       |
| sys                |
+--------------------+
5 rows in set (0.020 sec)

mysql>
