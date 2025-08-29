USE book_tracker;

-- Genres
INSERT INTO genres (genre_name) VALUES
('Thriller'),('Romance'),('Fantasy'),('Sci-Fi'),('Mystery'),
('Horror'),('Historical Fiction'),('Biography'),('Self-Help'),('Poetry'),
('Adventure'),('Drama'),('Humor'),('Graphic Novel'),('Classic'),
('Non-fiction'),('Young Adult'),('Children'),('Travel'),('Cooking');

-- Books 
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES
('Book Title 1','Author E',248,1998,6),
('Book Title 2','Author D',167,1983,8),
('Book Title 3','Author E',487,2012,6);

-- Reading status 
INSERT INTO reading_status (book_id, status, date_added) VALUES
(1,'Want to Read','2025-01-07'),
(2,'Currently Reading','2025-01-30'),
(3,'Read','2025-02-12');

-- Reviews
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES
(1,'2025-01-18',4,'Good pacing.'),
(2,'2025-05-02',3,'Okay read.'),
(3,'2025-03-17',5,'Loved it.');
