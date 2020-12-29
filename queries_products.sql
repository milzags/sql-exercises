-- Comments in SQL Start with dash-dash --
--question 1 answer: --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
--side note; based on SQLZoo, I thought that booleans were evaluted as either 1 (true) or false (0) in SQL? --

--question 2 answer: --
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

--question 3 answer: --
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);

-- question 4 answer: --
SELECT * FROM products;

--question 5 answer: --
SELECT name FROM products;

-- question 6 answer: --
SELECT name, price FROM products;

-- question 7 answer: --
INSERT INTO products (name, price, can_be_returned) VALUES ('computer', 500, false);

-- question 8 answer: --
SELECT * FROM products WHERE can_be_returned = 't';

-- question 9 answer: --
SELECT * FROM products WHERE price < 44.00;

-- question 10 answer: --
SELECT * FROM products where price >= 22.50 AND price <= 99.99;

-- question 11 answer: --
UPDATE products SET price = price - 20;

-- question 12 answer: --
DELETE FROM products WHERE price < 25;

-- question 13 answer: --
UPDATE products SET price = price + 20;

-- questeion 14 answer: --
UPDATE products SET can_be_returned = true;

