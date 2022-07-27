mysql> create database Mcdonalds;
Query OK, 1 row affected (0.02 sec)

mysql> use Mcdonalds;
Database changed
mysql> create table customer_queue(sr_no int, order_name varchar(20), order_no int);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into customer_queue values(1, "Pizza", 201);
Query OK, 1 row affected (0.02 sec)

mysql> select *from customer_queue;
+-------+------------+----------+
| sr_no | order_name | order_no |
+-------+------------+----------+
|     1 | Pizza      |      201 |
+-------+------------+----------+
1 row in set (0.00 sec)

mysql> insert into customer_queue(order_name) values("Burger");
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer_queue(order_no) values(203);
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer_queue(sr_no) values(4);
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer_queue values(5, "Taco", 205);
Query OK, 1 row affected (0.02 sec)

mysql> select * from customer_queue;
+-------+------------+----------+
| sr_no | order_name | order_no |
+-------+------------+----------+
|     1 | Pizza      |      201 |
|  NULL | Burger     |     NULL |
|  NULL | NULL       |      203 |
|     4 | NULL       |     NULL |
|     5 | Taco       |      205 |
+-------+------------+----------+
5 rows in set (0.00 sec)

mysql> select sr_no, order_no from customer_queue where sr_no=5 AND order_no=205;
+-------+----------+
| sr_no | order_no |
+-------+----------+
|     5 |      205 |
+-------+----------+
1 row in set (0.00 sec)

ERROR: 
No query specified

mysql> select * from customer_queue order by sr_no desc;
+-------+------------+----------+
| sr_no | order_name | order_no |
+-------+------------+----------+
|     5 | Taco       |      205 |
|     4 | NULL       |     NULL |
|     1 | Pizza      |      201 |
|  NULL | Burger     |     NULL |
|  NULL | NULL       |      203 |
+-------+------------+----------+
5 rows in set (0.00 sec)

mysql> alter table customer_queue add column price float;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer_queue;
+-------+------------+----------+-------+
| sr_no | order_name | order_no | price |
+-------+------------+----------+-------+
|     1 | Pizza      |      201 |  NULL |
|  NULL | Burger     |     NULL |  NULL |
|  NULL | NULL       |      203 |  NULL |
|     4 | NULL       |     NULL |  NULL |
|     5 | Taco       |      205 |  NULL |
+-------+------------+----------+-------+
5 rows in set (0.00 sec)

mysql> update customer_queue set sr_no=2 where order_name="Burger";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_queue set sr_no=3 where order_no=203;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_queue set order_name="Fries" where sr_no=3;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_queue set order_name="Nuggets" where sr_no=4;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer_queue;
+-------+------------+----------+-------+
| sr_no | order_name | order_no | price |
+-------+------------+----------+-------+
|     1 | Pizza      |      201 |  NULL |
|     2 | Burger     |     NULL |  NULL |
|     3 | Fries      |      203 |  NULL |
|     4 | Nuggets    |     NULL |  NULL |
|     5 | Taco       |      205 |  NULL |
+-------+------------+----------+-------+
5 rows in set (0.00 sec)

mysql> update customer_queue set price=259.99 where sr_no=1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_queue set price=99.99 where sr_no=2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_queue set price=19.99 where sr_no=5;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer_queue;
+-------+------------+----------+--------+
| sr_no | order_name | order_no | price  |
+-------+------------+----------+--------+
|     1 | Pizza      |      201 | 259.99 |
|     2 | Burger     |     NULL |  99.99 |
|     3 | Fries      |      203 |   NULL |
|     4 | Nuggets    |     NULL |   NULL |
|     5 | Taco       |      205 |  19.99 |
+-------+------------+----------+--------+
5 rows in set (0.00 sec)

mysql> alter table customer_queue rename column order_name to food;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer_queue;
+-------+---------+----------+--------+
| sr_no | food    | order_no | price  |
+-------+---------+----------+--------+
|     1 | Pizza   |      201 | 259.99 |
|     2 | Burger  |     NULL |  99.99 |
|     3 | Fries   |      203 |   NULL |
|     4 | Nuggets |     NULL |   NULL |
|     5 | Taco    |      205 |  19.99 |
+-------+---------+----------+--------+
5 rows in set (0.00 sec)

mysql> drop table customer_queue;
Query OK, 0 rows affected (0.02 sec)
