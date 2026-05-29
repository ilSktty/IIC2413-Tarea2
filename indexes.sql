DROP INDEX IF EXISTS id_orders_order_date;
DROP INDEX IF EXISTS idx_email_users;
DROP INDEX IF EXISTS idx_reviews_bid_revdate;
DROP INDEX IF EXISTS o_date_matview_idx;

-- Índice N°1 
CREATE INDEX id_orders_order_date ON orders(order_date DESC);

-- Índice N°2 
CREATE INDEX idx_email_users on users(LOWER(email));

-- Índice N°3 
CREATE INDEX idx_reviews_bid_revdate on reviews(book_id, review_date DESC);

-- Índice N°4 (sobre matview)
CREATE INDEX o_date_matview_idx ON orders_items_books(order_date);
