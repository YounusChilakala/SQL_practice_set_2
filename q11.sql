-- convert negative to positive and vice versa
DROP TABLE IF EXISTS tablefortest; 
CREATE TABLE tablefortest(srno int,  pos_neg_val int);
INSERT INTO tablefortest VALUES (1, 56);
INSERT INTO tablefortest VALUES (2, -74);
INSERT INTO tablefortest VALUES (3, 15);
INSERT INTO tablefortest VALUES (4, -51);
INSERT INTO tablefortest VALUES (5, -9);
INSERT INTO tablefortest VALUES (6, 32);
select * from tablefortest;

SELECT srno,pos_neg_val,-1 *(pos_neg_val) AS converted_signed_value 
FROM tablefortest;
-- alternative: you can also use 0-(pos_neg_val)
