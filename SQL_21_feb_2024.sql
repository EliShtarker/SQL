 CREATE TABLE students (id INTEGER PRIMARY Key, name TEXT, city TEXT, birth 
INTEGER);

INSERT INTO shopping VALUES (1, 'shalom', 'tel aviv , 1974);
INSERT INTO shopping VALUES (2, 'yuri', 'raanana, 1980);
INSERT INTO shopping VALUES (3, 'anat', 'rishon, 1994);
INSERT INTO shopping VALUES (4, 'dana', 'rehovot', 1990);
INSERT INTO shopping VALUES (5, 'omer', 'jerusalem, 1987);


CREATE TABLE grade (id INTEGER PRIMARY Key,grade INTEGER);

INSERT INTO grade VALUES (1,95);
INSERT INTO grade VALUES (2,70);
INSERT INTO grade VALUES (3,85);
INSERT INTO grade VALUES (4,99);
INSERT INTO grade VALUES (5,91);


SELECT grade AS "grades"


SELECT s.id, s.name, g.grade FROM students s JOIN
grades g ON s.id=g.id

SELECT AVG(grade) from grades

SELECT * FROM grades WHERE grade > 90

SELECT s.id, s.name, g.grade FROM students s JOIN grades g ON s.id = g.id WHERE g.grade > 90;

SELECT s.id, s.name, g.grade FROM students s JOIN
grades g ON s.id=g.id WHERE g.grade = (SELECT MAX(grade) FROM
grades)



