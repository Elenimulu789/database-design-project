-- Sample Query 1: Thriller books that are marked as 'Want to Read'
SELECT b.title, b.author, g.genre_name, rs.status
FROM books b
JOIN genres g ON b.genre_id = g.genre_id
JOIN reading_status rs ON b.book_id = rs.book_id
WHERE g.genre_name = 'Thriller'
  AND rs.status = 'Want to Read';

-- Sample Query 2: Top 5 highest-rated books that have been read
SELECT b.title, b.author, r.rating, r.review_text
FROM books b
JOIN reviews r ON b.book_id = r.book_id
JOIN reading_status rs ON b.book_id = rs.book_id
WHERE rs.status = 'Read'
ORDER BY r.rating DESC
LIMIT 5;
