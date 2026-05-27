CREATE MATERIALIZED VIEW order_items_books_rev AS
SELECT r.review_date, r.user_id AS "r_user_id", oi.quantity,
oi.unit_price, oi.book_id, b.genre, b.title, o.order_date, o.user_id
FROM orders o 
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b ON b.book_id = oi.book_id
JOIN reviews r ON r.book_id = oi.order_id;