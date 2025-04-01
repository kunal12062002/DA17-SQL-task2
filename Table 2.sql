CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    subject VARCHAR NOT NULL,
    experience INT NOT NULL
);

INSERT INTO teachers (name, subject, experience)  
VALUES  
    ('Anita Desai', 'Mathematics', 10),  
    ('Vikram Singh', 'Science', 8),  
    ('Meera Nair', 'English', 12),  
    ('Suresh Reddy', 'History', 9),  
    ('Nisha Malhotra', 'Geography', 7);

	SELECT * FROM teachers;

CREATE TABLE classes (
    class_id SERIAL,
    class_name VARCHAR NOT NULL,
    teacher_id INT,
    CONSTRAINT fk_teacher_classes FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO classes (class_id, class_name, teacher_id)  
VALUES  
    (801, 'Class 10 - A', 1),  
    (802, 'Class 10 - B', 2),  
    (803, 'Class 9 - A', 3),  
    (804, 'Class 8 - C', 4),  
    (805, 'Class 7 - B', 5);

SELECT * FROM classes;