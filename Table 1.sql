create table student (
    student_id SERIAL PRIMARY KEY,
    name varchar not NULL,
	Roll_number bigint not null,
    Section varchar not null
)

INSERT INTO student (name, Roll_number, Section)  
VALUES  
    ('Aditya Patil', 201, 'A'),  
    ('Snehal Jadhav', 202, 'B'),  
    ('Rohan Deshmukh', 203, 'A'),  
    ('Prachi Bhosale', 204, 'C'),  
    ('Swapnil Shinde', 205, 'B'),
	('Anurag lokhande', 206,'C')

	select * from student

	CREATE TABLE courses (
    course_id SERIAL,
    course_name VARCHAR NOT NULL,
	col_id int,
	CONSTRAINT fk_student_courses FOREIGN key (col_id) REFERENCES student(student_id)
)

INSERT INTO COURSES (course_id, course_name, col_id)  
VALUES  
    (101, 'Business Analytics', 1),  
    (102, 'Financial Management', 2),  
    (103, 'Marketing Strategy', 3),  
    (104, 'Operations Research', 4),  
    (105, 'Human Resource Management', 5)

select * from courses
	
