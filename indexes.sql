
-- Índice N°1 
DROP INDEX id_orders_order_date;
CREATE INDEX id_orders_order_date ON orders(order_date DESC);


-- Índice N°2 
DROP INDEX idx_email_users;
CREATE INDEX idx_email_users on users(LOWER(email));




-- Índice N°3 
DROP INDEX idx_reviews_bid_revdate;
CREATE INDEX idx_reviews_bid_revdate on reviews(book_id, review_date DESC);



