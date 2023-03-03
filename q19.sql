-- rate of execution of orders
CREATE TABLE orders_issued (distributor_id int, company_id int, quotation_date date);
INSERT INTO orders_issued VALUES (101, 202, '2019-11-15');
INSERT INTO orders_issued VALUES (101, 203, '2019-11-15');
INSERT INTO orders_issued VALUES (101, 204, '2019-11-15');
INSERT INTO orders_issued VALUES (102, 202, '2019-11-16');
INSERT INTO orders_issued VALUES (102, 201, '2019-11-15');
INSERT INTO orders_issued VALUES (103, 203, '2019-11-17');
INSERT INTO orders_issued VALUES (103, 202, '2019-11-17');
INSERT INTO orders_issued VALUES (104, 203, '2019-11-18');
INSERT INTO orders_issued VALUES (104, 204, '2019-11-18');

CREATE TABLE orders_executed (orders_from int, executed_from int, executed_date date);
INSERT INTO orders_executed VALUES (101, 202, '2019-11-17');
INSERT INTO orders_executed VALUES (101, 203, '2019-11-17');
INSERT INTO orders_executed VALUES (102, 202, '2019-11-17');
INSERT INTO orders_executed VALUES (103, 203, '2019-11-18');
INSERT INTO orders_executed VALUES (103, 202, '2019-11-19');
INSERT INTO orders_executed VALUES (104, 203, '2019-11-20');

SELECT
ROUND(
    IFNULL(
    (SELECT COUNT(*) FROM (SELECT DISTINCT orders_from, executed_from FROM orders_executed) AS A)
    /
    (SELECT COUNT(*) FROM (SELECT DISTINCT distributor_id, company_id FROM orders_issued) AS B),
    0)
, 2) AS rate_of_execution;