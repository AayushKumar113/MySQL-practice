create database aayush;

use aayush;

create table students(
id INT auto_increment primary key,
name VARCHAR(50),
age INT NOT NULL,
grade char,
seat_no INT unique);

insert into students(
name, age, grade, seat_no)
values
("Anil", 25, "A", 12456),
("Aayush", 18, "A", 45134),
("Piyush", 17, "B", 478569),
("Kamlesh", 42, "B", 754326);

SELECT * FROM students;

SELECT grade, COUNT(*) FROM students
GROUP BY grade
HAVING COUNT(*) > 1;

SELECT grade, AVG(age)
FROM students
GROUP BY grade
HAVING AVG(age) > 20;

SELECT age, COUNT(*) AS student_count
FROM students
GROUP BY age
HAVING COUNT(*) > 1;

SELECT grade, count(*) FROM students
GROUP BY grade
HAVING count(*);

SELECT grade, sum(roll_no) FROM students
group by grade
having sum(roll_no) > 100000;

select age, sum(roll_no)
from students
group by age
having sum(roll_no) > 100000;

select grade, max(age) 
from students
group by grade
having max(age) > 30;

select char_length(name), count(*) from students
group by char_length(name)
having count(*) > 1;

select left(name, 1), count(*)
from students
group by left(name, 1)
having count(*) > 1;

SELECT grade, SUM(age) FROM students
GROUP BY grade
HAVING SUM(age);


select upper(name) 
as names
from students;

select lower(name)
as names
from students;

select left(name, 3) as names
from students;

SELECT CONCAT(name, ' - ', grade) AS name_grade
FROM students;

select name, char_length(name) as names
from students;

select name, reverse(name) as reversed_names
from students;

select name, replace(name, "a", "@") as replaced_name
from students;

select * from students
where roll_no >= (select max(roll_no) from students);

select name, roll_no, age from students
where age < (select avg(age) from students);

select name, age, roll_no 
from students
where age <= (select min(age) from students);

select name, grade, id
from students
where grade = (select grade from students
	where id = 1);
    
select name, grade, id 
from students
where grade not in (select distinct grade from students
	where grade = "A");
    
    
select name, roll_no
from students
where roll_no > (select avg(roll_no) from students);

select name, age, id
from students
where age = (select max(age) from students);

select * from students
where age > (select min(age) from students);

select * from students
where age in (select distinct age from students
	order by age desc
    limit 2);
    

select * from students
where age = (
select max(age) 
from students
where age < (select max(age) from students)
);
    
SELECT COUNT(*) AS students_with_vowels
FROM students
WHERE name LIKE '%a%'
   OR name LIKE '%e%'
   OR name LIKE '%i%'
   OR name LIKE '%o%'
   OR name LIKE '%u%';


