--  a
 CREATE SCHEMA LibraryManagement;
 USE LibraryManagement;

-- b
 CREATE TABLE authors(
 author_id INT AUTO_INCREMENT PRIMARY KEY,
 author_name VARCHAR(50)
 ); 

-- c 
 CREATE TABLE genres(
  genre_id INT AUTO_INCREMENT PRIMARY KEY,
  genre_name VARCHAR(50)
  ); 
 
-- d 
 CREATE TABLE books(
	 book_id INT AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(50),
     publication_year YEAR,
     author_id INT, 
     genre_id INT,
     FOREIGN KEY( author_id ) REFERENCES  authors( author_id ) ON DELETE SET NULL, 
     FOREIGN KEY( genre_id ) REFERENCES genres( genre_id ) ON DELETE SET NULL 
 );

-- e 
 CREATE TABLE users (
 	user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50)
 );

-- f
CREATE TABLE borrowed_books (
borrow_id INT AUTO_INCREMENT PRIMARY KEY,
book_id INT,
user_id INT,
FOREIGN KEY ( book_id ) REFERENCES books ( book_id )  ON DELETE SET NULL,
FOREIGN KEY ( user_id ) REFERENCES users ( user_id )  ON DELETE SET NULL,
borrow_date DATE,
return_date DATE
)

