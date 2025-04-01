CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    model VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    availability BOOLEAN DEFAULT TRUE
);

INSERT INTO vehicles (vehicle_id, model, type, availability) VALUES 
    (1, 'Toyota Camry', 'Sedan', TRUE),
    (2, 'Honda Civic', 'Sedan', TRUE),
    (3, 'Ford F-150', 'Truck', FALSE),
    (4, 'Tesla Model 3', 'Electric', TRUE),
    (5, 'Ducati Monster', 'Motorcycle', FALSE);

SELECT * FROM vehicles;

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR NOT NULL,
    phone BIGINT NOT NULL,
    rented_vehicle_id INT,
    CONSTRAINT fk_client_vehicle FOREIGN KEY (rented_vehicle_id) REFERENCES vehicles(vehicle_id)
);

INSERT INTO clients (client_id, name, phone, rented_vehicle_id) VALUES 
    (101, 'Amit Sharma', 9876543210, 1),
    (102, 'Priya Verma', 8765432109, 3),
    (103, 'Ravi Mehta', 7654321098, NULL),
    (104, 'Sonia Kapoor', 6543210987, 5),
    (105, 'Neeraj Das', 5432109876, 2);

SELECT * FROM clients;

CREATE TABLE rentals (
    rental_id INT PRIMARY KEY,
    rental_date DATE NOT NULL,
    return_date DATE NOT NULL,
    customer_ref_id INT NOT NULL,
    CONSTRAINT fk_rentals_clients FOREIGN KEY (customer_ref_id) REFERENCES clients(client_id)
);

INSERT INTO rentals (rental_id, rental_date, return_date, customer_ref_id) VALUES 
    (201, '2025-03-01', '2025-03-05', 101),
    (202, '2025-03-02', '2025-03-06', 102),
    (203, '2025-03-05', '2025-03-10', 105),
    (204, '2025-03-07', '2025-03-12', 104),
    (205, '2025-03-08', '2025-03-15', 101);

SELECT * FROM rentals;