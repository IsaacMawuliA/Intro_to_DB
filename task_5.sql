USE alx_book_store;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer(
customer_id INT NOT NULL,
customer_name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
PRIMARY KEY (customer_id)
);

INSERT INTO customer (customer_id, customer_name, email, address) 
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');