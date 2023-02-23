-- select student names where id is not 602 and those who have teacher id

create database practice;
use practice;
CREATE TABLE IF NOT EXISTS students (student_id INT,student_name VARCHAR(25),teacher_id INT);
TRUNCATE TABLE students;

INSERT INTO students (student_id, student_name, teacher_id) values ('1001', 'Alex', '601');
INSERT INTO students (student_id, student_name, teacher_id) values ('1002', 'Jhon', NULL);
INSERT INTO students (student_id, student_name, teacher_id) values ('1003', 'Peter', NULL);
INSERT INTO students (student_id, student_name, teacher_id) values ('1004', 'Minto', '604');
INSERT INTO students (student_id, student_name, teacher_id) values ('1005', 'Crage', NULL);
INSERT INTO students (student_id, student_name, teacher_id) values ('1006', 'Chang', '601');
INSERT INTO students (student_id, student_name, teacher_id) values ('1007', 'Philip', '602');

select * from students;

select student_name from students where teacher_id<>602 and teacher_id is not NULL;