mysql> create database Mcdonalds;

mysql> use Mcdonalds;
Database changed

mysql> create table customer(c_id int PRIMARY KEY AUTO_INCREMENT, c_name varchar(25), c_order varchar(20) UNIQUE, price int NOT NULL, branch varchar(10) DEFAULT "Pune");
Query OK, 0 rows affected (0.03 sec)

mysql> select *from customer;
Empty set (0.00 sec)

mysql> show tables
    -> ;
+---------------------+
| Tables_in_Mcdonalds |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.00 sec)

mysql> select *from customer;
Empty set (0.00 sec)

mysql> insert into customer(c_name, price) values ("Ace", 250);
Query OK, 1 row affected (0.03 sec)

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | NULL    |   250 | Pune   |
+------+--------+---------+-------+--------+
1 row in set (0.00 sec)

mysql> insert into customer(c_name, c_order, price) values ("Ace", "Pizza", 750);
Query OK, 1 row affected (0.02 sec)

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | NULL    |   250 | Pune   |
|    2 | Ace    | Pizza   |   750 | Pune   |
+------+--------+---------+-------+--------+
2 rows in set (0.00 sec)

mysql> update customer set c_name = Nami where c_id = 2;

Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> insert into customer(c_name, c_order, price) values ("Zoro", "Burger", 750);
Query OK, 1 row affected (0.02 sec)

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | NULL    |   250 | Pune   |
|    2 | Nami   | Pizza   |   750 | Pune   |
|    3 | Zoro   | Burger  |   750 | Pune   |
+------+--------+---------+-------+--------+
3 rows in set (0.00 sec)

mysql> insert into customer(c_name, c_order, price) values ("Law", "Taco", 500);
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer(c_name, c_order, price) values ("Red", "Pasta", 199);
Query OK, 1 row affected (0.02 sec)

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | NULL    |   250 | Pune   |
|    2 | Nami   | Pizza   |   750 | Pune   |
|    3 | Zoro   | Burger  |   750 | Pune   |
|    4 | Law    | Taco    |   500 | Pune   |
|    5 | Red    | Pasta   |   199 | Pune   |
+------+--------+---------+-------+--------+
5 rows in set (0.00 sec)

mysql> update customer set c_order = "Nuggets" where c_id = 1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | Nuggets |   250 | Pune   |
|    2 | Nami   | Pizza   |   750 | Pune   |
|    3 | Zoro   | Burger  |   750 | Pune   |
|    4 | Law    | Taco    |   500 | Pune   |
|    5 | Red    | Pasta   |   199 | Pune   |
+------+--------+---------+-------+--------+
5 rows in set (0.00 sec)

mysql> update customer set branch = "Nagpur" where c_id = 1;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | Nuggets |   250 | Nagpur |
|    2 | Nami   | Pizza   |   750 | Pune   |
|    3 | Zoro   | Burger  |   750 | Pune   |
|    4 | Law    | Taco    |   500 | Pune   |
|    5 | Red    | Pasta   |   199 | Pune   |
+------+--------+---------+-------+--------+
5 rows in set (0.00 sec)

mysql> update customer set branch = "Wardha" where c_id = 4;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from customer;
+------+--------+---------+-------+--------+
| c_id | c_name | c_order | price | branch |
+------+--------+---------+-------+--------+
|    1 | Ace    | Nuggets |   250 | Nagpur |
|    2 | Nami   | Pizza   |   750 | Pune   |
|    3 | Zoro   | Burger  |   750 | Pune   |
|    4 | Law    | Taco    |   500 | Wardha |
|    5 | Red    | Pasta   |   199 | Pune   |
+------+--------+---------+-------+--------+
5 rows in set (0.00 sec)
