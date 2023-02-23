-- highest number of orders
DROP TABLE  IF EXISTS salemast;
CREATE TABLE salemast(salesperson_id int,  order_id int);
INSERT INTO salemast(salesperson_id, order_id) VALUES ('5001', '1001');
INSERT INTO salemast(salesperson_id, order_id) VALUES ('5002', '1002');
INSERT INTO salemast(salesperson_id, order_id) VALUES ('5003', '1002');
INSERT INTO salemast(salesperson_id, order_id) VALUES ('5004', '1002');
INSERT INTO salemast(salesperson_id, order_id) VALUES ('5005', '1003');
INSERT INTO salemast(salesperson_id, order_id) VALUES ('5006', '1004');
select * from salemast;
select order_id,count(order_id) as count from salemast group by order_id order by count desc limit 1;