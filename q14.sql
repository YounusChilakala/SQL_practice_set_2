DROP TABLE IF EXISTS student_test;
CREATE TABLE student_test(student_id int,  marks_achieved int);
INSERT INTO student_test VALUES (1, 56);
INSERT INTO student_test VALUES (2, 74);
INSERT INTO student_test VALUES (3, 15);
INSERT INTO student_test VALUES (4, 74);
INSERT INTO student_test VALUES (5, 89);
INSERT INTO student_test VALUES (6, 56);
INSERT INTO student_test VALUES (7, 93);

select distinct marks_achieved as unique_marks from student_test;