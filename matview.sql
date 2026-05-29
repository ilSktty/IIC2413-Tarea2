DROP INDEX IF EXISTS o_date_matview_idx;
DROP MATERIALIZED VIEW IF EXISTS orders_items_books;

--Crear MV
CREATE MATERIALIZED VIEW orders_items_books AS
SELECT oi.quantity, oi.unit_price, oi.book_id, 
b.genre, b.title, o.order_date, o.user_id
FROM orders o 
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b ON b.book_id = oi.book_id; 

-- Índice N°4 (sobre matview)
CREATE INDEX o_date_matview_idx ON orders_items_books(order_date);