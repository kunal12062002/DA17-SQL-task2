CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    phone_number BIGINT NOT NULL,
    address VARCHAR NOT NULL
);

INSERT INTO customers (name, phone_number, address)  
VALUES  
    ('Rahul Sharma', 9876543210, 'Mumbai'),  
    ('Neha Gupta', 8765432109, 'Delhi'),  
    ('Amit Verma', 7654321098, 'Bangalore'),  
    ('Sneha Reddy', 6543210987, 'Hyderabad'),  
    ('Vikram Patil', 5432109876, 'Pune');

	SELECT * FROM customers;

CREATE TABLE orders (
    order_id SERIAL,
    food_item VARCHAR NOT NULL,
    Ordervia varchar,
    CONSTRAINT fk_customer_orders FOREIGN KEY (order_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, food_item, Ordervia)  
VALUES  
    (1, 'Pizza', 'swiggy'),  
    (2, 'Burger', 'zepto'),  
    (3, 'Pasta', 'blinkit'),  
    (4, 'Biryani', 'zomato'),  
    (5, 'Sandwich', 'panda');

SELECT * FROM orders;