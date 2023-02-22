-- display even or odd

DROP TABLE IF EXISTS tablefortest;
CREATE TABLE tablefortest(srno int,  col_val int);
INSERT INTO tablefortest VALUES (1, 56);
INSERT INTO tablefortest VALUES (2, 74);
INSERT INTO tablefortest VALUES (3, 15);
INSERT INTO tablefortest VALUES (4, 51);
INSERT INTO tablefortest VALUES (5, 9);
INSERT INTO tablefortest VALUES (6, 32);

SELECT * FROM tablefortest;

SELECT srno, col_val,
     CASE WHEN col_val%2=0 THEN 'Even'
          WHEN col_val%2=1 THEN 'Odd'
          END AS Even_Odd
     FROM tablefortest;