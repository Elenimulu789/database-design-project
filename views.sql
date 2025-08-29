USE book_tracker;

-- View 1: Reading Status Overview
CREATE OR REPLACE VIEW reading_status_view AS
SELECT 
    b.book_id,
    b.title,
    g.genre_name,
    rs.status,
    rs.date_added
FROM books b
JOIN genres g ON b.genre_id = g.genre_id
JOIN reading_status rs ON rs.book_id = b.book_id;

-- View 2: Book Reviews
CREATE OR REPLACE VIEW book_reviews_view AS
SELECT 
    b.book_id,
    b.title,
    r.date_read,
    r.rating,
    r.review_text
FROM books b
LEFT JOIN reviews r ON r.book_id = b.book_id;


CREATE OR REPLACE VIEW genre_avg_rating_view AS
SELECT 
    g.genre_name,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(r.review_id) AS review_count
FROM genres g
JOIN books b ON b.genre_id = g.genre_id
LEFT JOIN reviews r ON r.book_id = b.book_id
GROUP BY g.genre_name;
