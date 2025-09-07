-- Insert sample customers
INSERT INTO Customers (customer_name, email, phone, city) VALUES
('Alice Johnson', 'alice@example.com', '555-1000', 'New York'),
('Bob Smith', 'bob@example.com', '555-2000', 'Chicago'),
('Charlie Lee', 'charlie@example.com', '555-3000', 'San Francisco');

-- Insert sample suppliers
INSERT INTO Suppliers (supplier_name, contact_email, phone, location) VALUES
('TechSupply Co.', 'sales@techsupply.com', '555-1111', 'New York'),
('OfficeGoods Ltd.', 'info@officegoods.com', '555-2222', 'Chicago'),
('KitchenWorld', 'support@kitchenworld.com', '555-3333', 'San Francisco');

-- Insert sample products
INSERT INTO Products (product_name, category, price, stock_quantity, supplier_id) VALUES
('Laptop', 'Electronics', 899.99, 20, 1),
('Monitor', 'Electronics', 199.99, 35, 1),
('Printer Paper (500 sheets)', 'Office Supplies', 6.99, 180, 2),
('Desk Chair', 'Office Furniture', 129.99, 12, 2),
('Blender', 'Appliances', 59.99, 8, 3),
('Microwave Oven', 'Appliances', 149.99, 4, 3);

-- Insert sample orders
INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2025-08-01', 'Completed'),
(2, '2025-08-02', 'Pending'),
(3, '2025-08-03', 'Completed');

-- Insert order items
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 2),  -- Alice bought 2 Laptops
(1, 2, 1),  -- Alice bought 1 Monitor
(2, 3, 10), -- Bob ordered 10 packs of Printer Paper
(2, 4, 2),  -- Bob ordered 2 Desk Chairs
(3, 5, 1),  -- Charlie bought 1 Blender
(3, 6, 1);  -- Charlie bought 1 Microwave Oven
