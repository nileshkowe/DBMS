mysql> create table employee(emp_id int PRIMARY KEY AUTO_INCREMENT, emp_name varchar(25), city varchar(20) DEFAULT "Pune", salary int, DOB date, experience float);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee values(1, "Jack", "Wano", 95000, '1965-07-01', 1.25);
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;
+--------+----------+------+--------+------------+------------+
| emp_id | emp_name | city | salary | DOB        | experience |
+--------+----------+------+--------+------------+------------+
|      1 | Jack     | Wano |  95000 | 1965-07-01 |       1.25 |
+--------+----------+------+--------+------------+------------+
1 row in set (0.00 sec)

mysql> insert into employee(emp_name, salary, DOB, experience) values("Buggy", 55000, '1967-03-15', 1);
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;
+--------+----------+------+--------+------------+------------+
| emp_id | emp_name | city | salary | DOB        | experience |
+--------+----------+------+--------+------------+------------+
|      1 | Jack     | Wano |  95000 | 1965-07-01 |       1.25 |
|      2 | Buggy    | Pune |  55000 | 1967-03-15 |          1 |
+--------+----------+------+--------+------------+------------+
2 rows in set (0.00 sec)

mysql> insert into employee(emp_name, salary, DOB, experience) values("Doflamingo", 77000, '1977-04-12', 2.5);
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+--------+------------+------+--------+------------+------------+
| emp_id | emp_name   | city | salary | DOB        | experience |
+--------+------------+------+--------+------------+------------+
|      1 | Jack       | Wano |  95000 | 1965-07-01 |       1.25 |
|      2 | Buggy      | Pune |  55000 | 1967-03-15 |          1 |
|      3 | Doflamingo | Pune |  77000 | 1977-04-12 |        2.5 |
+--------+------------+------+--------+------------+------------+
3 rows in set (0.00 sec)

mysql> insert into employee(emp_name, salary, DOB, experience) values("Mihawk", 99000, '1955-09-17', 8);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee(emp_name, salary, DOB, experience) values("Kaido", 199000, '1954-02-11', 25);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(6, "Jack", "Hawaii", 280000, '1967-07-29', 19);
Query OK, 1 row affected (0.04 sec)

mysql> select * from employee;
+--------+------------+--------+--------+------------+------------+
| emp_id | emp_name   | city   | salary | DOB        | experience |
+--------+------------+--------+--------+------------+------------+
|      1 | Jack       | Wano   |  95000 | 1965-07-01 |       1.25 |
|      2 | Buggy      | Pune   |  55000 | 1967-03-15 |          1 |
|      3 | Doflamingo | Pune   |  77000 | 1977-04-12 |        2.5 |
|      4 | Mihawk     | Pune   |  99000 | 1955-09-17 |          8 |
|      5 | Kaido      | Pune   | 199000 | 1954-02-11 |         25 |
|      6 | Jack       | Hawaii | 280000 | 1967-07-29 |         19 |
+--------+------------+--------+--------+------------+------------+
6 rows in set (0.00 sec)

mysql> create view e_sal
    -> as
    -> select emp_name, salary from employee where salary BETWEEN 70000 AND 200000;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from e_sal;
+------------+--------+
| emp_name   | salary |
+------------+--------+
| Jack       |  95000 |
| Doflamingo |  77000 |
| Mihawk     |  99000 |
| Kaido      | 199000 |
+------------+--------+
4 rows in set (0.00 sec)

mysql> 
mysql> create table product_details(product_id int, product_name varchar(20), quantity int, price float);
Query OK, 0 rows affected (0.04 sec)

mysql> create table order_price(product_id int, product_name varchar(20), price float);
Query OK, 0 rows affected (0.03 sec)

mysql> create table sales_details(s_id int, product_id int, quantity int, price float, cust_name varchar(25));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into product_details values(1, "book", 10, 69.99);
Query OK, 1 row affected (0.03 sec)

mysql> insert into product_details values(2, "marker", 8, 7.99);
Query OK, 1 row affected (0.02 sec)

mysql> insert into product_details values(3, "pen", 15, 10.09);
Query OK, 1 row affected (0.02 sec)

mysql> insert into product_details values(4, "eraser", 11, 9.19);
Query OK, 1 row affected (0.02 sec)

mysql> select *from product_details;
+------------+--------------+----------+-------+
| product_id | product_name | quantity | price |
+------------+--------------+----------+-------+
|          1 | book         |       10 | 69.99 |
|          2 | marker       |        8 |  7.99 |
|          3 | pen          |       15 | 10.09 |
|          4 | eraser       |       11 |  9.19 |
+------------+--------------+----------+-------+
4 rows in set (0.00 sec)

mysql> insert into order_price values(1, "book", 69.99);
Query OK, 1 row affected (0.02 sec)

mysql> insert into order_price values(2, "marker", 7.99);
Query OK, 1 row affected (0.02 sec)

mysql> insert into order_price values(3, "pen", 10.09);
Query OK, 1 row affected (0.03 sec)

mysql> insert into order_price values(4, "eraser", 9.19);
Query OK, 1 row affected (0.00 sec)

mysql> insert into sales_details values(101, 1, 10, 69.99, "Jack");
Query OK, 1 row affected (0.03 sec)

mysql> insert into sales_details values(102, 2, 8, 7.99, "Sanji");
Query OK, 1 row affected (0.02 sec)

mysql> insert into sales_details values(103, 3, 15, 10.09, "Zoro");
Query OK, 1 row affected (0.02 sec)

mysql> insert into sales_details values(104, 4, 11, 9.19, "Chopper");
Query OK, 1 row affected (0.03 sec)

mysql> select product_details.product_id, order_price.product_id from product_details INNER JOIN order_price where product_details.product_id=order_price.product_id;
+------------+------------+
| product_id | product_id |
+------------+------------+
|          1 |          1 |
|          2 |          2 |
|          3 |          3 |
|          4 |          4 |
+------------+------------+
4 rows in set (0.00 sec)

mysql> select product_details.product_name, order_price.product_id from product_details INNER JOIN order_price where product_details.product_id=order_price.product_id
;
+--------------+------------+
| product_name | product_id |
+--------------+------------+
| book         |          1 |
| marker       |          2 |
| pen          |          3 |
| eraser       |          4 |
+--------------+------------+
4 rows in set (0.00 sec)

mysql> select *from order_price;
+------------+--------------+-------+
| product_id | product_name | price |
+------------+--------------+-------+
|          1 | book         | 69.99 |
|          2 | marker       |  7.99 |
|          3 | pen          | 10.09 |
|          4 | eraser       |  9.19 |
+------------+--------------+-------+
4 rows in set (0.00 sec)

mysql> select *from sales_details;
+------+------------+----------+-------+-----------+
| s_id | product_id | quantity | price | cust_name |
+------+------------+----------+-------+-----------+
|  101 |          1 |       10 | 69.99 | Jack      |
|  102 |          2 |        8 |  7.99 | Sanji     |
|  103 |          3 |       15 | 10.09 | Zoro      |
|  104 |          4 |       11 |  9.19 | Chopper   |
+------+------------+----------+-------+-----------+
4 rows in set (0.00 sec)

mysql> select *from sales_details where price>(select price from sales_details where cust_name="Zoro");
+------+------------+----------+-------+-----------+
| s_id | product_id | quantity | price | cust_name |
+------+------------+----------+-------+-----------+
|  101 |          1 |       10 | 69.99 | Jack      |
+------+------------+----------+-------+-----------+
1 row in set (0.00 sec)

mysql> select *from sales_details where price<(select price from sales_details where cust_name="Zoro");
+------+------------+----------+-------+-----------+
| s_id | product_id | quantity | price | cust_name |
+------+------------+----------+-------+-----------+
|  102 |          2 |        8 |  7.99 | Sanji     |
|  104 |          4 |       11 |  9.19 | Chopper   |
+------+------------+----------+-------+-----------+
2 rows in set (0.00 sec)

mysql> select cust_name, sum(quantity) from sales_details group by cust_name;
+-----------+---------------+
| cust_name | sum(quantity) |
+-----------+---------------+
| Jack      |            10 |
| Sanji     |             8 |
| Zoro      |            15 |
| Chopper   |            11 |
+-----------+---------------+
4 rows in set (0.03 sec)

mysql> 

