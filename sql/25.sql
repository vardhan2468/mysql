create database university;
use university;

CREATE TABLE University (
    uni_id INT PRIMARY KEY AUTO_INCREMENT,
    uni_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);


CREATE TABLE Department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    uni_id INT,
    FOREIGN KEY (uni_id) REFERENCES University(uni_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
desc university;
show tables;

INSERT INTO University (uni_name, location) VALUES
('Harvard University', 'USA'),
('Oxford University', 'UK');

INSERT INTO Department (dept_name, uni_id) VALUES
('Computer Science', 1),
('Mathematics', 1),
('Physics', 2);

INSERT INTO Student (student_name, email, dept_id) VALUES
('Alice Johnson', 'alice@harvard.edu', 1),
('Bob Smith', 'bob@harvard.edu', 2),
('Charlie Brown', 'charlie@oxford.edu', 3);

select * from department;
select * from university;
select * from student;


SELECT s.student_id AS ID,
       s.student_name AS Name,
       d.dept_name AS Department,
       u.uni_name AS University
FROM Student s
JOIN Department d ON s.dept_id = d.dept_id
JOIN University u ON d.uni_id = u.uni_id;

SELECT student_name
FROM Student
WHERE student_name LIKE 'A%';


CREATE VIEW StudentUniversity AS
SELECT s.student_name, d.dept_name, u.uni_name
FROM Student s
JOIN Department d ON s.dept_id = d.dept_id
JOIN University u ON d.uni_id = u.uni_id;

SELECT * FROM StudentUniversity;




