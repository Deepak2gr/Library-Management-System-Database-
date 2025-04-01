-- Creating Data base
CREATE DATABASE LibraryDB;
USE LibraryDB;
-- create table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birthdate DATE,
    nationality VARCHAR(100)
);
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    availability BOOLEAN DEFAULT TRUE,
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
);

CREATE TABLE Patrons (
    patron_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255) NOT NULL
);

CREATE TABLE Borrowing_History (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    patron_id INT,
    borrow_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    return_date DATETIME NULL,
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    CONSTRAINT fk_patron FOREIGN KEY (patron_id) REFERENCES Patrons(patron_id) ON DELETE CASCADE
);

-- add iteams into tables
INSERT INTO Authors (name, birthdate, nationality) VALUES
('J.K. Rowling', '1965-07-31', 'British'),
('George Orwell', '1903-06-25', 'British'),
('Jane Austen', '1775-12-16', 'British'),
('Mark Twain', '1835-11-30', 'American'),
('Harper Lee', '1926-04-28', 'American'),
('J.R.R. Tolkien', '1892-01-03', 'British'),
('F. Scott Fitzgerald', '1896-09-24', 'American'),
('Charles Dickens', '1812-02-07', 'British'),
('Agatha Christie', '1890-09-15', 'British'),
('Leo Tolstoy', '1828-09-09', 'Russian'),
('Ernest Hemingway', '1899-07-21', 'American'),
('William Shakespeare', '1564-04-23', 'English'),
('Arthur Conan Doyle', '1859-05-22', 'British'),
('Stephen King', '1947-09-21', 'American'),
('Virginia Woolf', '1882-01-25', 'British'),
('Markus Zusak', '1975-03-23', 'Australian'),
('Dante Alighieri', '1265-06-01', 'Italian'),
('Kurt Vonnegut', '1922-11-11', 'American'),
('J.D. Salinger', '1919-01-01', 'American'),
('Haruki Murakami', '1949-01-12', 'Japanese'),
('C.S. Lewis', '1898-11-29', 'British'),
('John Steinbeck', '1902-02-27', 'American'),
('Toni Morrison', '1931-02-18', 'American'),
('Philip K. Dick', '1928-12-16', 'American'),
('Salman Rushdie', '1947-06-19', 'British-Indian');

INSERT INTO Books (title, author_id, isbn, availability) VALUES
('Harry Potter and the Sorcerer\'s Stone', 1, '978-0439708180', TRUE),
('1984', 2, '978-0451524935', TRUE),
('Pride and Prejudice', 3, '978-0141439518', TRUE),
('Adventures of Huckleberry Finn', 4, '978-0451530936', TRUE),
('To Kill a Mockingbird', 5, '978-0061120084', TRUE),
('The Hobbit', 6, '978-0618968633', TRUE),
('The Great Gatsby', 7, '978-0743273565', TRUE),
('A Tale of Two Cities', 8, '978-1853260391', TRUE),
('Murder on the Orient Express', 9, '978-0062693662', TRUE),
('War and Peace', 10, '978-1400079988', TRUE),
('The Old Man and the Sea', 11, '978-0684801223', TRUE),
('Romeo and Juliet', 12, '978-0743477116', TRUE),
('The Hound of the Baskervilles', 13, '978-0451530707', TRUE),
('The Shining', 14, '978-0307743657', TRUE),
('Mrs. Dalloway', 15, '978-0156628709', TRUE),
('The Book Thief', 16, '978-0375842207', TRUE),
('Divine Comedy', 17, '978-0142437223', TRUE),
('Slaughterhouse-Five', 18, '978-0440180296', TRUE),
('The Catcher in the Rye', 19, '978-0316769488', TRUE),
('Norwegian Wood', 20, '978-0375704024', TRUE),
('The Chronicles of Narnia', 21, '978-0064471190', TRUE),
('The Grapes of Wrath', 22, '978-0143039433', TRUE),
('Beloved', 23, '978-1400033416', TRUE),
('Do Androids Dream of Electric Sheep?', 24, '978-0345404473', TRUE),
('Midnight\'s Children', 25, '978-0812976533', TRUE);

INSERT INTO Patrons (name, contact_info) VALUES
('John Doe', 'johndoe@email.com'),
('Emma Watson', 'emmaw@email.com'),
('Robert Brown', 'robertb@email.com'),
('Alice Cooper', 'alicec@email.com'),
('James Smith', 'jamess@email.com'),
('Sophia Davis', 'sophiad@email.com'),
('Michael Johnson', 'michaelj@email.com'),
('Emily Taylor', 'emilyt@email.com'),
('Daniel Williams', 'danielw@email.com'),
('Olivia Martinez', 'oliviam@email.com'),
('David Wilson', 'davidw@email.com'),
('Isabella Moore', 'isabellam@email.com'),
('Lucas Garcia', 'lucasg@email.com'),
('Mason Lee', 'masonl@email.com'),
('Ava Perez', 'avap@email.com'),
('Liam Thomas', 'liamt@email.com'),
('Amelia White', 'ameliaw@email.com'),
('Noah Clark', 'noahc@email.com'),
('Charlotte Lewis', 'charlottel@email.com'),
('Benjamin Walker', 'benjaminw@email.com'),
('Elijah Harris', 'elijhah@email.com'),
('Mia Allen', 'miaa@email.com'),
('James Young', 'jamesy@email.com'),
('Abigail King', 'abigailk@email.com'),
('Matthew Scott', 'matthews@email.com');


INSERT INTO Borrowing_History (book_id, patron_id, borrow_date, return_date) VALUES
(1, 1, '2025-03-01 10:00:00', '2025-03-15 10:00:00'),
(2, 2, '2025-03-02 11:00:00', '2025-03-16 11:00:00'),
(3, 3, '2025-03-03 12:00:00', '2025-03-17 12:00:00'),
(4, 4, '2025-03-04 13:00:00', '2025-03-18 13:00:00'),
(5, 5, '2025-03-05 14:00:00', '2025-03-19 14:00:00'),
(6, 6, '2025-03-06 15:00:00', '2025-03-20 15:00:00'),
(7, 7, '2025-03-07 16:00:00', '2025-03-21 16:00:00'),
(8, 8, '2025-03-08 17:00:00', '2025-03-22 17:00:00'),
(9, 9, '2025-03-09 18:00:00', '2025-03-23 18:00:00'),
(10, 10, '2025-03-10 19:00:00', '2025-03-24 19:00:00'),
(11, 11, '2025-03-11 20:00:00', '2025-03-25 20:00:00'),
(12, 12, '2025-03-12 21:00:00', '2025-03-26 21:00:00'),
(13, 13, '2025-03-13 22:00:00', '2025-03-27 22:00:00'),
(14, 14, '2025-03-14 23:00:00', '2025-03-28 23:00:00'),
(15, 15, '2025-03-15 00:00:00', '2025-03-29 00:00:00'),
(16, 16, '2025-03-16 01:00:00', '2025-03-30 01:00:00'),
(17, 17, '2025-03-17 02:00:00', '2025-03-31 02:00:00'),
(18, 18, '2025-03-18 03:00:00', '2025-04-01 03:00:00'),
(19, 19, '2025-03-19 04:00:00', '2025-04-02 04:00:00'),
(20, 20, '2025-03-20 05:00:00', '2025-04-03 05:00:00'),
(21, 21, '2025-03-21 06:00:00', '2025-04-04 06:00:00'),
(22, 22, '2025-03-22 07:00:00', '2025-04-05 07:00:00'),
(23, 23, '2025-03-23 08:00:00', '2025-04-06 08:00:00'),
(24, 24, '2025-03-24 09:00:00', '2025-04-07 09:00:00'),
(25, 25, '2025-03-25 10:00:00', '2025-04-08 10:00:00');

SELECT b.book_id, b.title, a.name AS author, b.isbn, 
       IF(b.availability = 1, 'Available', 'Borrowed') AS status
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
WHERE b.title LIKE '%Harry Potter%' 
   OR a.name LIKE '%Rowling%' 
   OR b.isbn = '9780439708180';
 -- check for availability  
SELECT title, availability  
FROM Books  
WHERE availability = 1;


SELECT * FROM librarydb.authors;

SELECT * FROM librarydb.books;

SELECT * FROM librarydb.borrowing_history;

SELECT * FROM librarydb.patrons;
SELECT * FROM borrowing_history;




