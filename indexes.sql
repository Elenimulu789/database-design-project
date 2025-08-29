USE book_tracker;

-- Books 
CREATE INDEX idx_books_genre_id 
    ON books(genre_id);

-- Reading Status 
CREATE INDEX idx_reading_status_book_id 
    ON reading_status(book_id);

-- Reviews
CREATE INDEX idx_reviews_book_id 
    ON reviews(book_id);
