-- INSERT INTO Customers (name, email, phone, address) 
-- VALUES 
-- ('Alice Smith', 'alice.smith@example.com', '555-1234', '1234 Elm St, Springfield'),
-- ('Bob Johnson', 'bob.johnson@example.com', '555-5678', '5678 Oak St, Springfield'),
-- ('Charlie Brown', 'charlie.brown@example.com', '555-8765', '8765 Pine St, Springfield');


-- INSERT INTO Products (name, description, price, stock) 
-- VALUES 
-- ('Laptop', '14-inch screen, 8GB RAM, 256GB SSD', 799.99, 20),
-- ('Smartphone', '5G connectivity, 128GB storage', 599.99, 50),
-- ('Wireless Headphones', 'Noise-cancelling over-ear headphones', 199.99, 30);


-- INSERT INTO Orders (customer_id, order_date, status, total_amount) 
-- VALUES 
-- (1, '2024-12-01', 'Pending', 799.99),
-- (2, '2024-12-02', 'Shipped', 599.99),
-- (3, '2024-12-03', 'Delivered', 199.99);


-- INSERT INTO OrderItems (order_id, product_id, quantity) 
-- VALUES 
-- (1, 1, 1), -- 1 Laptop for order 1
-- (2, 2, 1), -- 1 Smartphone for order 2
-- (3, 3, 1); -- 1 Wireless Headphone for order 3


-- Get all customers:

SELECT * FROM Customers;

-- Get all orders for a specific customer:

SELECT * FROM Orders WHERE customer_id = 1;


-- Get all items in an order:

SELECT p.name, oi.quantity 
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.id
WHERE oi.order_id = 1;

