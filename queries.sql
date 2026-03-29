-- CREATE: Add a new product
INSERT INTO products (name, sku_code, price, category) VALUES ('Gaming Keyboard', 'GK123456', 2499.00, 'electronics');

-- READ: Get all electronics
SELECT * FROM products WHERE category = 'electronics';

-- UPDATE: Change price
UPDATE products SET price = 899.00 WHERE product_id = 1;

-- DELETE: Remove a product
DELETE FROM products WHERE product_id = 9;
