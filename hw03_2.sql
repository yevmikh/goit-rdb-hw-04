INSERT INTO authors(author_name)
	VALUES('Gibson'), ('Konig');

INSERT INTO genres(genre_name)
	VALUE('History'), ('Poem');

INSERT INTO books(title, publication_year, author_id, genre_id)
	VALUE('Apocalypto', 2006, 1, 1), ('Anders als gedacht', 2008, 2, 2);

INSERT INTO users(username, email)
	VALUE('B.Simpson','b-simpson@gmail.com'), ('L.Simpson','l-simpson@gmail.com');
    
INSERT INTO borrowed_books(book_id, user_id, borrow_date, reurn_date)
	VALUE(1, 1, '2024-05-25', '2024-05-30'), (2, 2, '2024-06-06', '2024-06-09');
    