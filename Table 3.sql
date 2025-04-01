CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    age INT NOT NULL,
    ward VARCHAR NOT NULL
);

INSERT INTO patients (name, age, ward)  
VALUES  
    ('Amit Kumar', 45, 'General'),  
    ('Pooja Singh', 30, 'ICU'),  
    ('Rakesh Mehta', 55, 'General'),  
    ('Simran Kaur', 40, 'Maternity'),  
    ('Deepak Sharma', 29, 'General');

	SELECT * FROM patients;

CREATE TABLE appointments (
    appointment_id SERIAL,
    doctor_name VARCHAR NOT NULL,
    patient_ref_id INT, 
    CONSTRAINT fk_patient_appointments FOREIGN KEY (patient_ref_id) REFERENCES patients(patient_id)
);

INSERT INTO appointments (appointment_id, doctor_name, patient_ref_id)  
VALUES  
    (401, 'Dr. Rajiv Malhotra', 1),  
    (402, 'Dr. Sneha Nair', 2),  
    (403, 'Dr. Akash Sharma', 3),  
    (404, 'Dr. Priya Kapoor', 4),  
    (405, 'Dr. Mohit Verma', 5);

SELECT * FROM appointments;