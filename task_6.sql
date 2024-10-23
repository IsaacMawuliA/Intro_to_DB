INSERT INTO Customers (customer_id, customer_name, email, address) VALUES

(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');

INSERT INTO Customers (customer_name, email, address) VALUES
('New Customer', 'newcustomer@example.com', '124 Happiness Ave.');

UPDATE Customers
SET address = '124 Happiness Ave.'
WHERE customer_id = [specific_id];