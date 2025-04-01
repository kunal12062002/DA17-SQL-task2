CREATE TABLE candidates (
    candidate_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    email VARCHAR NOT NULL UNIQUE,
    experience INT NOT NULL 
);

INSERT INTO candidates (name, email, experience)  
VALUES  
    ('Rajesh Kumar', 'rajesh@example.com', 5),  
    ('Neha Sharma', 'neha@example.com', 3),  
    ('Amit Verma', 'amit@example.com', 7),  
    ('Sneha Nair', 'sneha@example.com', 2),  
    ('Vikram Patil', 'vikram@example.com', 4);

	SELECT * FROM candidates;

CREATE TABLE applications (
    application_id SERIAL,
    job_title VARCHAR NOT NULL,
    Portel_id INT,  
    CONSTRAINT fk_candidate_applications FOREIGN KEY (Portel_id) REFERENCES candidates(candidate_id)
);

INSERT INTO applications (application_id, job_title, Portel_id)  
VALUES  
    (801, 'Software Engineer', 1),  
    (802, 'Data Analyst', 2),  
    (803, 'Marketing Manager', 3),  
    (804, 'HR Executive', 4),  
    (805, 'Project Manager', 5);

SELECT * FROM applications;