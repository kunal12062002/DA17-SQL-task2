CREATE TABLE members (
    ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    MOB BIGINT DEFAULT 0
);

INSERT INTO members (ID, NAME, MOB) VALUES 
    (1, 'Aryan Sharma', 9876543210),
    (2, 'Meera Iyer', 8765432109),
    (3, 'Raj Malhotra', 7654321098),
    (4, 'Sanya Kapoor', 6543210987),
    (5, 'Rohan Desai', 5432109876);

SELECT * FROM members;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR NOT NULL,
    member_id INT NOT NULL,
    CONSTRAINT books_members FOREIGN KEY (member_id) REFERENCES members(ID)
);

INSERT INTO books (book_id, title, member_id) VALUES 
    (101, 'The Alchemist', 1),
    (102, 'Rich Dad Poor Dad', 2),
    (103, 'Sapiens', 3),
    (104, 'Atomic Habits', 4),
    (105, 'The Psychology of Money', 5);

SELECT * FROM books;

CREATE TABLE borrowed_books (
    borrow_id INT PRIMARY KEY,
    book_title VARCHAR NOT NULL,
    borrow_date DATE NOT NULL,
    book_ref_id INT NOT NULL,
    CONSTRAINT borrowed_books_books FOREIGN KEY (book_ref_id) REFERENCES books(book_id)
);

INSERT INTO borrowed_books (borrow_id, book_title, borrow_date, book_ref_id) VALUES 
    (201, 'The Alchemist', '2025-03-10', 101),
    (202, 'Rich Dad Poor Dad', '2025-03-12', 102),
    (203, 'Sapiens', '2025-03-15', 103),
    (204, 'Atomic Habits', '2025-03-18', 104),
    (205, 'The Psychology of Money', '2025-03-20', 105);

SELECT * FROM borrowed_books;