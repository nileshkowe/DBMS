mysql> use Mcdonalds;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
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
5 rows in set (0.03 sec)

mysql> alter table customer add column rating int;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from customer;
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    1 | Ace    | Nuggets |   250 | Nagpur |   NULL |
|    2 | Nami   | Pizza   |   750 | Pune   |   NULL |
|    3 | Zoro   | Burger  |   750 | Pune   |   NULL |
|    4 | Law    | Taco    |   500 | Wardha |   NULL |
|    5 | Red    | Pasta   |   199 | Pune   |   NULL |
+------+--------+---------+-------+--------+--------+
5 rows in set (0.00 sec)

mysql> alter table customer drop column rating;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

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

mysql> alter table customer add column rating int CHECK(rating>10);
Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from customer;
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    1 | Ace    | Nuggets |   250 | Nagpur |   NULL |
|    2 | Nami   | Pizza   |   750 | Pune   |   NULL |
|    3 | Zoro   | Burger  |   750 | Pune   |   NULL |
|    4 | Law    | Taco    |   500 | Wardha |   NULL |
|    5 | Red    | Pasta   |   199 | Pune   |   NULL |
+------+--------+---------+-------+--------+--------+
5 rows in set (0.00 sec)

mysql> update customer set rating = 11 where c_id = 1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from customer;
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    1 | Ace    | Nuggets |   250 | Nagpur |     11 |
|    2 | Nami   | Pizza   |   750 | Pune   |   NULL |
|    3 | Zoro   | Burger  |   750 | Pune   |   NULL |
|    4 | Law    | Taco    |   500 | Wardha |   NULL |
|    5 | Red    | Pasta   |   199 | Pune   |   NULL |
+------+--------+---------+-------+--------+--------+
5 rows in set (0.00 sec)

mysql> create view cview
    -> as
    -> select c_id, c_order from customer;
Query OK, 0 rows affected (0.02 sec)

mysql> select *from cview;
+------+---------+
| c_id | c_order |
+------+---------+
|    3 | Burger  |
|    1 | Nuggets |
|    5 | Pasta   |
|    2 | Pizza   |
|    4 | Taco    |
+------+---------+
5 rows in set (0.00 sec)

mysql> select c_id, c_order from customer;
+------+---------+
| c_id | c_order |
+------+---------+
|    3 | Burger  |
|    1 | Nuggets |
|    5 | Pasta   |
|    2 | Pizza   |
|    4 | Taco    |
+------+---------+
5 rows in set (0.00 sec)

mysql> select c_id, price from customer
    -> where(price>250) OR (price<750);
+------+-------+
| c_id | price |
+------+-------+
|    1 |   250 |
|    2 |   750 |
|    3 |   750 |
|    4 |   500 |
|    5 |   199 |
+------+-------+
5 rows in set (0.00 sec)

mysql> select DISTINCT(branch) from customer;
+--------+
| branch |
+--------+
| Nagpur |
| Pune   |
| Wardha |
+--------+
3 rows in set (0.01 sec)

mysql> select count(*)from customer;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> select count(DISTINCT(branch)) from customer;
+-------------------------+
| count(DISTINCT(branch)) |
+-------------------------+
|                       3 |
+-------------------------+
1 row in set (0.00 sec)

mysql> select max(price) from customer;
+------------+
| max(price) |
+------------+
|        750 |
+------------+
1 row in set (0.00 sec)

mysql> select min(price) from customer;
+------------+
| min(price) |
+------------+
|        199 |
+------------+
1 row in set (0.00 sec)

mysql> select *from customer where price BETWEEN 199 AND 500;
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    1 | Ace    | Nuggets |   250 | Nagpur |     11 |
|    4 | Law    | Taco    |   500 | Wardha |   NULL |
|    5 | Red    | Pasta   |   199 | Pune   |   NULL |
+------+--------+---------+-------+--------+--------+
3 rows in set (0.00 sec)

mysql> select *from customer where c_name like '_a%';
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    2 | Nami   | Pizza   |   750 | Pune   |   NULL |
|    4 | Law    | Taco    |   500 | Wardha |   NULL |
+------+--------+---------+-------+--------+--------+
2 rows in set (0.00 sec)

mysql> select *from customer where price IN (199, 750);
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    2 | Nami   | Pizza   |   750 | Pune   |   NULL |
|    3 | Zoro   | Burger  |   750 | Pune   |   NULL |
|    5 | Red    | Pasta   |   199 | Pune   |   NULL |
+------+--------+---------+-------+--------+--------+
3 rows in set (0.00 sec)

mysql> select *from customer order by c_id desc;
+------+--------+---------+-------+--------+--------+
| c_id | c_name | c_order | price | branch | rating |
+------+--------+---------+-------+--------+--------+
|    5 | Red    | Pasta   |   199 | Pune   |   NULL |
|    4 | Law    | Taco    |   500 | Wardha |   NULL |
|    3 | Zoro   | Burger  |   750 | Pune   |   NULL |
|    2 | Nami   | Pizza   |   750 | Pune   |   NULL |
|    1 | Ace    | Nuggets |   250 | Nagpur |     11 |
+------+--------+---------+-------+--------+--------+
5 rows in set (0.00 sec)

mysql> select c_order from customer where c_order like 'N%';
+---------+
| c_order |
+---------+
| Nuggets |
+---------+
1 row in set (0.00 sec)
