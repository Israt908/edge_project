-- Creating table books: 
 create table Book 
 (book_id int auto_increment primary key,
 Title varchar(50),
 published_year YEAR);
 
-- Creating table member:  
 create table Members 
(member_id int auto_increment primary key,
Name varchar(50),
Email varchar(100),
Phone varchar(20),
book_id int,
issue_date DATE,
foreign key(book_id) references Book(book_id));

 -- Inserting values in books table:  
INSERT INTO edgeict.book (Title, published_year)
VALUES ('It ends with us', 2014),
('It starts with us', 2017),
('Nemesis', 2018),
('November Nine', 2013),
('Opekkha', 1999),
('Lilaboti', 1995),
('Kobi', 1993),
('Jaal', 2021);

 -- Inserting values in member table:
INSERT INTO edgeict.members(Name,Email,Phone,book_id,issue_date) 
VALUES ('Israt', 'isrataa@gmail.com', '01892345678', '5', '2024-12-10'),
('Jahan', 'jahanaa@gmail.co', '01892356091', '4', '2024-11-11'),
('Khan', 'khanaa@gmail.co', '01786753469', '5', '2024-10-19'),
('Nusrat', 'nusrataa@gmail.co', '01862635173', '1', '2024-12-18'),
('Rownak', 'rownakaa@gmail.com', '01872354678', '3', '2024-10-02'),
('Shawon', 'shawonaa@gmail.com', '01892348710', '7', '2024-10-04'),
('Hridi', 'hridiaa@gmail.com', '01926384628', '2', '2024-12-09'),
('Mush', 'mushaa@gmail.com', '01789234509', '4', '2024-10-22'),
('Moyuri', 'moyuriaa@gmail.com', '01629374823', '6', '2024-11-13'),
('Sharif', 'sharifaa@gmail.com', '01891264836', '8', '2024-11-16'),
('Habib', 'habibaa@gmail.com', '01872364501', '4', '2024-11-08'),
('Foyez', 'foyezaa@gmail.com', '01827364839', '8', '2024-10-13');

-- Joining tables: 
SELECT m.Name, m.Email, m.book_id
FROM Member m
INNER JOIN Books b ON m.book_id = b.book_id
WHERE b.book_id = 8;

-- Insert new information: 
INSERT INTO edgeict.books(book_id,Title,published_year)
VALUES (9,"Ikigai",1999);

-- Update member information: 
UPDATE member
SET name  = "Jahaan" , Email = "jahaanaa@gmail.com"
WHERE member_id = 2;

-- Delete an information: 
DELETE FROM books WHERE book_id = 9;




  