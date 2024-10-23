INSERT INTO Customers (customer_id, customer_name, email, address) VALUES
(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.')As new_values
ON DUPLICATE KEY UPDATE
customer_name = new_values.customer_name, email = new_values.email, address = new_values.address;
