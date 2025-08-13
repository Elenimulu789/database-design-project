-- Create database and use it
CREATE DATABASE IF NOT EXISTS book_tracker;
USE book_tracker;

-- Create Genres table
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL UNIQUE
);

-- Create Books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    page_count INT,
    publication_year INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Create Reading Status table
CREATE TABLE reading_status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    status ENUM('Read', 'Currently Reading', 'Want to Read') NOT NULL,
    date_added DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Create Reviews table
CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    date_read DATE,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    review_text TEXT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Insert genres
INSERT INTO genres (genre_name) VALUES ('Thriller');
INSERT INTO genres (genre_name) VALUES ('Romance');
INSERT INTO genres (genre_name) VALUES ('Fantasy');
INSERT INTO genres (genre_name) VALUES ('Sci-Fi');
INSERT INTO genres (genre_name) VALUES ('Mystery');
INSERT INTO genres (genre_name) VALUES ('Horror');
INSERT INTO genres (genre_name) VALUES ('Historical Fiction');
INSERT INTO genres (genre_name) VALUES ('Biography');
INSERT INTO genres (genre_name) VALUES ('Self-Help');
INSERT INTO genres (genre_name) VALUES ('Poetry');
INSERT INTO genres (genre_name) VALUES ('Adventure');
INSERT INTO genres (genre_name) VALUES ('Drama');
INSERT INTO genres (genre_name) VALUES ('Humor');
INSERT INTO genres (genre_name) VALUES ('Graphic Novel');
INSERT INTO genres (genre_name) VALUES ('Classic');
INSERT INTO genres (genre_name) VALUES ('Non-fiction');
INSERT INTO genres (genre_name) VALUES ('Young Adult');
INSERT INTO genres (genre_name) VALUES ('Children');
INSERT INTO genres (genre_name) VALUES ('Travel');
INSERT INTO genres (genre_name) VALUES ('Cooking');

-- Insert books
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 1', 'Author E', 248, 1998, 6);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 2', 'Author D', 167, 1983, 8);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 3', 'Author E', 487, 2012, 6);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 4', 'Author C', 468, 1982, 17);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 5', 'Author B', 308, 2008, 16);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 6', 'Author C', 477, 1995, 17);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 7', 'Author B', 495, 2015, 9);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 8', 'Author E', 382, 2002, 19);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 9', 'Author C', 443, 1998, 20);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 10', 'Author B', 211, 1997, 3);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 11', 'Author B', 482, 2003, 14);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 12', 'Author C', 323, 1983, 2);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 13', 'Author C', 208, 2000, 2);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 14', 'Author E', 304, 1999, 13);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 15', 'Author D', 380, 2011, 14);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 16', 'Author D', 315, 1988, 13);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 17', 'Author B', 580, 1993, 7);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 18', 'Author E', 221, 2014, 18);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 19', 'Author D', 482, 2023, 9);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 20', 'Author E', 434, 2021, 4);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 21', 'Author B', 160, 2018, 11);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 22', 'Author D', 190, 1983, 17);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 23', 'Author D', 575, 2012, 11);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 24', 'Author E', 492, 1997, 8);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 25', 'Author B', 576, 2019, 3);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 26', 'Author A', 165, 1984, 11);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 27', 'Author D', 366, 2006, 6);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 28', 'Author A', 294, 2001, 14);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 29', 'Author A', 474, 2005, 12);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 30', 'Author D', 358, 2016, 19);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 31', 'Author B', 553, 1999, 15);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 32', 'Author E', 221, 1991, 4);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 33', 'Author D', 358, 2005, 6);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 34', 'Author B', 420, 2016, 16);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 35', 'Author E', 396, 1995, 8);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 36', 'Author C', 499, 2020, 12);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 37', 'Author D', 226, 2025, 12);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 38', 'Author D', 154, 2013, 16);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 39', 'Author A', 473, 2003, 4);
INSERT INTO books (title, author, page_count, publication_year, genre_id) VALUES ('Book Title 40', 'Author E', 186, 2016, 3);

-- Insert reading_status
INSERT INTO reading_status (book_id, status, date_added) VALUES (1, 'Want to Read', '2025-01-07');
INSERT INTO reading_status (book_id, status, date_added) VALUES (2, 'Currently Reading', '2025-01-30');
INSERT INTO reading_status (book_id, status, date_added) VALUES (3, 'Currently Reading', '2025-05-07');
INSERT INTO reading_status (book_id, status, date_added) VALUES (4, 'Read', '2025-02-12');
INSERT INTO reading_status (book_id, status, date_added) VALUES (5, 'Want to Read', '2025-06-07');
INSERT INTO reading_status (book_id, status, date_added) VALUES (6, 'Want to Read', '2025-05-05');
INSERT INTO reading_status (book_id, status, date_added) VALUES (7, 'Want to Read', '2025-07-16');
INSERT INTO reading_status (book_id, status, date_added) VALUES (8, 'Currently Reading', '2025-08-28');
INSERT INTO reading_status (book_id, status, date_added) VALUES (9, 'Currently Reading', '2025-01-22');
INSERT INTO reading_status (book_id, status, date_added) VALUES (10, 'Read', '2025-04-11');
INSERT INTO reading_status (book_id, status, date_added) VALUES (11, 'Currently Reading', '2025-08-24');
INSERT INTO reading_status (book_id, status, date_added) VALUES (12, 'Currently Reading', '2025-04-01');
INSERT INTO reading_status (book_id, status, date_added) VALUES (13, 'Read', '2025-01-22');
INSERT INTO reading_status (book_id, status, date_added) VALUES (14, 'Read', '2025-01-26');
INSERT INTO reading_status (book_id, status, date_added) VALUES (15, 'Currently Reading', '2025-08-20');
INSERT INTO reading_status (book_id, status, date_added) VALUES (16, 'Read', '2025-04-04');
INSERT INTO reading_status (book_id, status, date_added) VALUES (17, 'Read', '2025-02-18');
INSERT INTO reading_status (book_id, status, date_added) VALUES (18, 'Currently Reading', '2025-03-21');
INSERT INTO reading_status (book_id, status, date_added) VALUES (19, 'Currently Reading', '2025-05-20');
INSERT INTO reading_status (book_id, status, date_added) VALUES (20, 'Want to Read', '2025-02-28');
INSERT INTO reading_status (book_id, status, date_added) VALUES (21, 'Currently Reading', '2025-02-22');
INSERT INTO reading_status (book_id, status, date_added) VALUES (22, 'Want to Read', '2025-01-11');
INSERT INTO reading_status (book_id, status, date_added) VALUES (23, 'Read', '2025-03-23');
INSERT INTO reading_status (book_id, status, date_added) VALUES (24, 'Currently Reading', '2025-05-22');
INSERT INTO reading_status (book_id, status, date_added) VALUES (25, 'Currently Reading', '2025-04-08');
INSERT INTO reading_status (book_id, status, date_added) VALUES (26, 'Currently Reading', '2025-05-17');
INSERT INTO reading_status (book_id, status, date_added) VALUES (27, 'Currently Reading', '2025-07-12');
INSERT INTO reading_status (book_id, status, date_added) VALUES (28, 'Read', '2025-05-12');
INSERT INTO reading_status (book_id, status, date_added) VALUES (29, 'Want to Read', '2025-07-01');
INSERT INTO reading_status (book_id, status, date_added) VALUES (30, 'Currently Reading', '2025-06-23');
INSERT INTO reading_status (book_id, status, date_added) VALUES (31, 'Want to Read', '2025-05-04');
INSERT INTO reading_status (book_id, status, date_added) VALUES (32, 'Read', '2025-07-31');
INSERT INTO reading_status (book_id, status, date_added) VALUES (33, 'Want to Read', '2025-06-05');
INSERT INTO reading_status (book_id, status, date_added) VALUES (34, 'Read', '2025-05-19');
INSERT INTO reading_status (book_id, status, date_added) VALUES (35, 'Want to Read', '2025-07-10');
INSERT INTO reading_status (book_id, status, date_added) VALUES (36, 'Want to Read', '2025-06-13');
INSERT INTO reading_status (book_id, status, date_added) VALUES (37, 'Want to Read', '2025-07-05');
INSERT INTO reading_status (book_id, status, date_added) VALUES (38, 'Want to Read', '2025-01-22');
INSERT INTO reading_status (book_id, status, date_added) VALUES (39, 'Currently Reading', '2025-04-26');
INSERT INTO reading_status (book_id, status, date_added) VALUES (40, 'Want to Read', '2025-05-09');

-- Insert reviews
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (1, '2025-01-18', 1, 'Review text for book 1.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (2, '2025-05-02', 1, 'Review text for book 2.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (3, '2025-03-17', 4, 'Review text for book 3.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (4, '2025-08-06', 5, 'Review text for book 4.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (5, '2025-01-25', 2, 'Review text for book 5.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (6, '2025-02-01', 1, 'Review text for book 6.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (7, '2025-01-18', 1, 'Review text for book 7.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (8, '2025-02-16', 4, 'Review text for book 8.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (9, '2025-03-19', 4, 'Review text for book 9.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (10, '2025-05-05', 5, 'Review text for book 10.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (11, '2025-01-03', 5, 'Review text for book 11.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (12, '2025-03-16', 1, 'Review text for book 12.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (13, '2025-05-25', 5, 'Review text for book 13.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (14, '2025-03-12', 4, 'Review text for book 14.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (15, '2025-04-02', 5, 'Review text for book 15.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (16, '2025-04-06', 3, 'Review text for book 16.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (17, '2025-07-15', 1, 'Review text for book 17.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (18, '2025-05-01', 1, 'Review text for book 18.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (19, '2025-06-15', 5, 'Review text for book 19.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (20, '2025-04-15', 2, 'Review text for book 20.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (21, '2025-07-09', 4, 'Review text for book 21.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (22, '2025-07-21', 3, 'Review text for book 22.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (23, '2025-01-13', 3, 'Review text for book 23.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (24, '2025-07-17', 1, 'Review text for book 24.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (25, '2025-06-27', 4, 'Review text for book 25.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (26, '2025-03-05', 4, 'Review text for book 26.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (27, '2025-03-09', 2, 'Review text for book 27.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (28, '2025-04-21', 4, 'Review text for book 28.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (29, '2025-08-01', 3, 'Review text for book 29.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (30, '2025-02-05', 3, 'Review text for book 30.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (31, '2025-07-14', 1, 'Review text for book 31.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (32, '2025-03-24', 5, 'Review text for book 32.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (33, '2025-04-15', 1, 'Review text for book 33.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (34, '2025-04-15', 5, 'Review text for book 34.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (35, '2025-01-09', 5, 'Review text for book 35.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (36, '2025-07-06', 3, 'Review text for book 36.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (37, '2025-01-03', 1, 'Review text for book 37.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (38, '2025-03-06', 5, 'Review text for book 38.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (39, '2025-06-04', 4, 'Review text for book 39.');
INSERT INTO reviews (book_id, date_read, rating, review_text) VALUES (40, '2025-02-21', 1, 'Review text for book 40.');
