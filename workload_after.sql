-- Workload for group 5.
-- 100 queries sampled from 12 classes (Q01..Q12).
-- Each query is tagged with its class and an instance index so the
-- runner can aggregate timings by class.
--
-- You may add CREATE INDEX statements to speed these queries up.
-- For the materialization step, you may rewrite individual queries
-- to consume a MATERIALIZED VIEW you create -- but the rewritten
-- query MUST return the same result for the same parameters.

-- ===== 001 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 22044
ORDER BY review_date DESC LIMIT 20;

-- ===== 002 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-06-22' AND o.order_date < '2021-06-29'
ORDER BY o.order_date DESC;

-- ===== 003 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-09-08' AND o.order_date < '2024-09-15'
ORDER BY o.order_date DESC;

-- ===== 004 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'fantasy'
  AND price BETWEEN 15 AND 30
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 005 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Rosa.larsen72834@shop.net';

-- ===== 006 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2024-11-01' AND order_date < '2024-12-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;

-- ===== 007 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('FARID.GUPTA118930@MAIL.COM');

-- ===== 008 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'victor.chen152609@shop.net';

-- ===== 009 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'cyrus.okafor4742@books.io';

-- ===== 010 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 14489
ORDER BY review_date DESC LIMIT 20;

-- ===== 011 =====
SELECT COUNT(*) FROM (
    SELECT book_id FROM reviews
    GROUP BY book_id
    HAVING COUNT(*) >= 10 AND AVG(rating) > 4.0
) sub;

-- ===== 012 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'cyrus.ferreira27175@mail.com';

-- ===== 013 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'pablo.ueda23655@books.io';

-- ===== 014 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2024-12-01' AND order_date < '2025-01-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;

-- ===== 015 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'eero.xu75888@books.io';

-- ===== 016 =====
SELECT COUNT(*) FROM (
    SELECT book_id FROM reviews
    GROUP BY book_id
    HAVING COUNT(*) >= 10 AND AVG(rating) > 4.0
) sub;

-- ===== 017 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'victor.yamamoto26010@books.io';

-- ===== 018 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'tara.petrov147705@books.io';

-- ===== 019 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('PABLO.MORENO178471@EXAMPLE.ORG');

-- ===== 020 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-09-01' AND o.order_date < '2024-09-08'
ORDER BY o.order_date DESC;

-- ===== 021 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 7167
ORDER BY review_date DESC LIMIT 20;

-- ===== 022 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'bianca.petrov37473@mail.com';

-- ===== 023 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'The E%'
ORDER BY title LIMIT 25;

-- ===== 024 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'zara.wagner40898@books.io';

-- ===== 025 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2024-12-01' AND order_date < '2025-01-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 026 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 11607
ORDER BY review_date DESC LIMIT 20;

-- ===== 027 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'The D%'
ORDER BY title LIMIT 25;

-- ===== 028 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'yusuf.ivanov113057@shop.net';

-- ===== 029 =====
SELECT DISTINCT r.user_id, r.book_id
FROM reviews r
WHERE EXISTS (
    SELECT 1 FROM orders_items_books o
    WHERE o.user_id = r.user_id AND o.book_id = r.book_id
)
  AND r.review_date >= '2023-11-01' AND r.review_date < '2023-12-01';

-- ===== 030 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'poetry'
  AND price BETWEEN 10 AND 30
  AND publication_year >= 2021
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 031 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 17663
ORDER BY review_date DESC LIMIT 20;

-- ===== 032 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2022-10-01' AND order_date < '2022-11-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 033 =====
SELECT COUNT(*) FROM (
    SELECT book_id FROM reviews
    GROUP BY book_id
    HAVING COUNT(*) >= 10 AND AVG(rating) > 4.0
) sub;

-- ===== 034 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2022-11-08' AND o.order_date < '2022-11-15'
ORDER BY o.order_date DESC;

-- ===== 035 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2021-07-01' AND order_date < '2021-08-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 036 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Last %'
ORDER BY title LIMIT 25;

-- ===== 037 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2023-04-01' AND order_date < '2023-05-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;

-- ===== 038 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'science'
  AND price BETWEEN 20 AND 50
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 039 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('PABLO.NAKAMURA101347@MAIL.COM');

-- ===== 040 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'carla.gupta159768@mail.com';

-- ===== 041 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('UMA.HASSAN72324@MAIL.COM');

-- ===== 042 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'science'
  AND price BETWEEN 5 AND 25
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 043 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'pablo.alvarez126610@books.io';

-- ===== 044 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Winte%'
ORDER BY title LIMIT 25;

-- ===== 045 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('FATIMA.XU15805@BOOKS.IO');

-- ===== 046 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'zara.yamamoto171936@mail.com';

-- ===== 047 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Ghost%'
ORDER BY title LIMIT 25;

-- ===== 048 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'cyrus.davidson25945@shop.net';

-- ===== 049 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 22312
ORDER BY review_date DESC LIMIT 20;

-- ===== 050 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'quincy.kowalski107841@shop.net';

-- ===== 051 =====
SELECT genre, DATE_TRUNC('month', order_date) AS month,
       SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2022-12-01' AND order_date < '2023-12-01'
GROUP BY genre, DATE_TRUNC('month', order_date)
ORDER BY month, revenue DESC;

-- ===== 052 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2024-02-01' AND order_date < '2024-03-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;

-- ===== 053 =====
SELECT DISTINCT r.user_id, r.book_id
FROM reviews r
WHERE EXISTS (
    SELECT 1 FROM orders_items_books o
    WHERE o.user_id = r.user_id AND o.book_id = r.book_id
)
  AND r.review_date >= '2022-03-01' AND r.review_date < '2022-04-01';

-- ===== 054 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'noah.brooks131299@books.io';

-- ===== 055 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Tara.jensen80730@shop.net';

-- ===== 056 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'rosa.hassan150580@mail.com';

-- ===== 057 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'farid.ivanov51883@example.org';

-- ===== 058 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'ben.kowalski106874@mail.com';

-- ===== 059 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'hiro.moreno162859@example.org';

-- ===== 060 =====
SELECT COUNT(*) FROM (
    SELECT book_id FROM reviews
    GROUP BY book_id
    HAVING COUNT(*) >= 10 AND AVG(rating) > 4.0
) sub;

-- ===== 061 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Dista%'
ORDER BY title LIMIT 25;

-- ===== 062 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Kiri.silva54106@books.io';

-- ===== 063 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 12170
ORDER BY review_date DESC LIMIT 20;

-- ===== 064 =====
SELECT genre, DATE_TRUNC('month', order_date) AS month,
       SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2022-12-01' AND order_date < '2023-12-01'
GROUP BY genre, DATE_TRUNC('month', order_date)
ORDER BY month, revenue DESC;

-- ===== 065 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 7358 AND warehouse_id = 8;

-- ===== 066 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 21607
ORDER BY review_date DESC LIMIT 20;

-- ===== 067 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'farid.BROOKS54960@mail.com';

-- ===== 068 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Yusuf.brooks97676@example.org';

-- ===== 069 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2024-04-01' AND order_date < '2024-05-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 070 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'olga.espinoza198833@books.io';

-- ===== 071 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'eero.okafor95241@mail.com';

-- ===== 072 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('PABLO.MORENO73502@SHOP.NET');

-- ===== 073 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'kiri.nakamura87910@mail.com';

-- ===== 074 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('OLGA.PETROV142785@SHOP.NET');

-- ===== 075 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 8320 AND warehouse_id = 8;

-- ===== 076 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 10624
ORDER BY review_date DESC LIMIT 20;

-- ===== 077 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Kiri.tanaka16187@books.io';

-- ===== 078 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2022-08-01' AND order_date < '2022-09-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 079 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'fiction'
  AND price BETWEEN 5 AND 25
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 080 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 9118 AND warehouse_id = 1;

-- ===== 081 =====
SELECT COUNT(*) FROM (
    SELECT book_id FROM reviews
    GROUP BY book_id
    HAVING COUNT(*) >= 10 AND AVG(rating) > 4.0
) sub;

-- ===== 082 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 29986
ORDER BY review_date DESC LIMIT 20;

-- ===== 083 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-06-15' AND o.order_date < '2024-06-22'
ORDER BY o.order_date DESC;

-- ===== 084 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2023-10-01' AND order_date < '2023-11-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;

-- ===== 085 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'scifi'
  AND price BETWEEN 15 AND 40
  AND publication_year >= 2020
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 086 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2023-08-01' AND order_date < '2023-09-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;

-- ===== 087 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Last %'
ORDER BY title LIMIT 25;

-- ===== 088 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Broke%'
ORDER BY title LIMIT 25;

-- ===== 089 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'poetry'
  AND price BETWEEN 15 AND 50
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 090 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 6822
ORDER BY review_date DESC LIMIT 20;

-- ===== 091 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 18370
ORDER BY review_date DESC LIMIT 20;

-- ===== 092 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 27804 AND warehouse_id = 4;

-- ===== 093 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Shado%'
ORDER BY title LIMIT 25;

-- ===== 094 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'wei.kowalski63704@example.org';

-- ===== 095 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 15258
ORDER BY review_date DESC LIMIT 20;

-- ===== 096 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 10553
ORDER BY review_date DESC LIMIT 20;

-- ===== 097 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'maya.jensen47392@example.org';

-- ===== 098 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 25286 AND warehouse_id = 1;

-- ===== 099 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 26315 AND warehouse_id = 8;

-- ===== 100 =====
SELECT book_id, title, SUM(quantity * unit_price) AS revenue
FROM orders_items_books
WHERE order_date >= '2022-09-01' AND order_date < '2022-10-01'
GROUP BY book_id, title
ORDER BY revenue DESC LIMIT 10;