mysql> create database student;
Query OK, 1 row affected (0.01 sec)

mysql> use student;
Database changed

mysql> create table stud_info(roll_no int,name varchar(30), age int, city varchar(20), per float);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into stud_info values (1, "Nilesh", 19, "Pune", 95.20);
Query OK, 1 row affected (0.03 sec)
mysql> insert into stud_info values (2, "Rushikesh", 20, "Mumbai", 70);
Query OK, 1 row affected (0.02 sec)
mysql> insert into stud_info values (3, "Kalp", 20, "Mumbai", 90);
Query OK, 1 row affected (0.03 sec)
-.
mysql> select * from stud_info;
+---------+---------+------+--------+------+
| roll_no | name     | age  | city   | per  |
+---------+---------+------+--------+------+
|       1 | Nilesh   |   19 | Pune   | 95.2 |
|       2 | Rushikesh|   20 | Mumbai |   70 |
|       3 | Kalp     |   20 | Mumbai |   90 |
+---------+---------+------+--------+------+
3 rows in set (0.00 sec)

mysql> alter table stud_info add mobile int(10);
Query OK, 0 rows affected, 1 warning (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 1
mysql> select * from stud_info;
+---------+---------+------+--------+------+--------+
| roll_no | name     | age  | city   | per  | mobile |
+---------+---------+------+--------+------+--------+
|       1 | Nilesh   |   19 | Pune   | 95.2 |   NULL |
|       2 | Rushikesh|   20 | Mumbai |   70 |   NULL |
|       3 | Kalp     |   20 | Mumbai |   90 |   NULL |
+---------+---------+------+--------+------+--------+
3 rows in set (0.00 sec)

mysql> alter table stud_info drop column mobile;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> alter table stud_info add mobile int(10);
Query OK, 0 rows affected, 1 warning (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> alter table stud_info drop mobile;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table stud_info add mobile int(10);
Query OK, 0 rows affected, 1 warning (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> alter table stud_info rename column mobile to Mobile_no;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from stud_info;
+---------+---------+------+--------+------+-----------+
| roll_no | name      | age  | city   | per  | Mobile_no |
+---------+---------+------+--------+------+-----------+
|       1 | Nilesh    |   19 | Pune   | 95.2 |      NULL |
|       2 | Rushikesh |   20 | Mumbai |   70 |      NULL |
|       3 | Kalp      |   20 | Mumbai |   90 |      NULL |
+---------+---------+------+--------+------+-----------+
3 rows in set (0.00 sec)

mysql> alter table stud_info modify column roll_no varchar(20);
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from stud_info;
+---------+---------+------+--------+------+-----------+
| roll_no | name      | age  | city   | per  | Mobile_no |
+---------+---------+------+--------+------+-----------+
| 1       | Nilesh    |   19 | Pune   | 95.2 |      NULL |
| 2       | Rushikesh |   20 | Mumbai |   70 |      NULL |
| 3       | Kalp      |   20 | Mumbai |   90 |      NULL |
+---------+---------+------+--------+------+-----------+
3 rows in set (0.00 sec)

mysql> alter table stud_info modify column Mobile_no varchar(20);
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> update stud_info set Mobile_no = 1231231234 where roll_no = 1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from stud_info;
+---------+---------+------+--------+------+------------+
| roll_no | name      | age  | city   | per  | Mobile_no  |
+---------+---------+------+--------+------+------------+
| 1       | Nilesh    |   19 | Pune   | 95.2 | 1231231234 |
| 2       | Rushikesh |   20 | Mumbai |   70 | NULL       |
| 3       | Kalp      |   20 | Mumbai |   90 | NULL       |
+---------+---------+------+--------+------+------------+
3 rows in set (0.00 sec)

mysql> delete from stud_info where roll_no = 1;
Query OK, 1 row affected (0.02 sec)

mysql> select * from stud_info;
+---------+---------+------+--------+------+-----------+
| roll_no | name      | age  | city   | per  | Mobile_no |
+---------+---------+------+--------+------+-----------+
| 2       | Rushikesh |   20 | Mumbai |   70 | NULL      |
| 3       | Kalp      |   20 | Mumbai |   90 | NULL      |
+---------+---------+------+--------+------+-----------+
2 rows in set (0.01 sec)

mysql> delete from stud_info;
Query OK, 2 rows affected (0.02 sec)

mysql> use student;
ReGurung table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------------+
| Tables_in_student   |
+---------------------+
| stud_info           |
+---------------------+
1 row in set (0.00 sec)

mysql> alter table stud_info rename to sd;
Query OK, 0 rows affected (0.02 sec)

mysql> desc sd;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | varchar(20) | YES  |     | NULL    |       |
| name      | varchar(30) | YES  |     | NULL    |       |
| age       | int         | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
| per       | float       | YES  |     | NULL    |       |
| Mobile_no | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


mysql> insert into sd values(1, "Guru", 19, "Pune", 95.2, 4132134);
Query OK, 1 row affected (0.03 sec)

mysql> select * from sd;
+---------+------+------+------+------+-----------+
| roll_no | name | age  | city | per  | Mobile_no |
+---------+------+------+------+------+-----------+
| 1       | Guru  |   19 | Pune | 95.2 | 4132134   |
+---------+------+------+------+------+-----------+
1 row in set (0.00 sec)

mysql> create view sd_view
    -> as
    -> select roll_no, name, age from sd
    -> where roll_no>0;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from sd_view;
+---------+------+------+
| roll_no | name | age  |
+---------+------+------+
| 1       | Guru  |   19 |
+---------+------+------+
1 row in set (0.01 sec)

mysql> create database constraints;
Query OK, 1 row affected (0.02 sec)

mysql> use constraints;
Database changed
mysql> create table employee
    -> (emp_id int NOT NULL, emp_name varchar(25), city varchar(25));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee
    -> values (1, "Ateek", "Pune");
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+--------+----------+------+
| emp_id | emp_name | city |
+--------+----------+------+
|      1 | Ateek  | Pune |
+--------+----------+------+
1 row in set (0.00 sec)

mysql> create table unique1 (jersey_no int, player_name varchar(25), club varchar(25),UNIQUE(PLAYER_NAME));
Query OK, 0 rows affected (0.02 sec)

mysql> create table unique2 (jersey_no int, player_name varchar(25) UNIQUE, club varchar(25));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into unique2 
    -> values (1, "Neuer", "Bayern");
Query OK, 1 row affected (0.03 sec)

mysql> insert into unique2  values 1, "Neuer");
[1]+  Stopped                 mysql -u root -p
ubuntu@ubuntu-OptiPlex-5000:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.29-0ubuntu0.22.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use constraints;
ReGurung table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> insert into unique2 
    -> values(2, "Neuer", "Bayern")
    -> ;
ERROR 1062 (23000): Duplicate entry 'Neuer' for key 'unique2.player_name'
mysql> select * from unique2;
+-----------+-------------+--------+
| jersey_no | player_name | club   |
+-----------+-------------+--------+
|         1 | Neuer       | Bayern |
+-----------+-------------+--------+
1 row in set (0.00 sec)

mysql> alter table unique2 
    -> modify column jersey_no int PRIMARY KEY;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc unique2
    -> ;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| jersey_no   | int         | NO   | PRI | NULL    |       |
| player_name | varchar(25) | YES  | UNI | NULL    |       |
| club        | varchar(25) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table auto_inc1 (anime_id int PRIMARY KEY AUTO_INCREMENT, anime_name varchar(25), genre varchar(10))
;
Query OK, 0 rows affected (0.04 sec)

mysql> insert into auto_inc1
    -> ^C
mysql> insert into auto_inc1(anime_name, genre)
    -> values ("AOT", "Action");
Query OK, 1 row affected (0.02 sec)

mysql> insert into auto_inc1(anime_name, genre) values ("JJK", "Action");
Query OK, 1 row affected (0.02 sec)

mysql> select * from auto_inc1;
+----------+------------+--------+
| anime_id | anime_name | genre  |
+----------+------------+--------+
|        1 | AOT        | Action |
|        2 | JJK        | Action |
+----------+------------+--------+
2 rows in set (0.01 sec)

mysql> create table default1
    -> (emp_id int, emp_name varchar(25), city varchar(15) DEFAULT "Pune");
Query OK, 0 rows affected (0.03 sec)

mysql> insert into default1 (emp_id, emp_name)
    -> values (1001, "Ateek");
Query OK, 1 row affected (0.03 sec)

mysql> insert into default1 (emp_id, emp_name) values (1002, "Jayesh");
Query OK, 1 row affected (0.01 sec)

mysql> select * from default1;
+--------+----------+------+
| emp_id | emp_name | city |
+--------+----------+------+
|   1001 | Ateek    | Pune |
|   1002 | Jayesh   | Pune |
+--------+----------+------+
2 rows in set (0.00 sec)

No connection. Trying to reconnect...
Connection id:    8
Current database: constraints

Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into default1 (emp_id, emp_name, salary) values (1003, "Raj", 50000);
Query OK, 1 row affected (0.02 sec)

mysql> select * from default1;
+--------+----------+------+--------+
| emp_id | emp_name | city | salary |
+--------+----------+------+--------+
|   1001 | Ateek    | Pune |   NULL |
|   1002 | Jayesh   | Pune |   NULL |
|   1003 | Raj      | Pune |  50000 |
+--------+----------+------+--------+
3 rows in set (0.00 sec)


