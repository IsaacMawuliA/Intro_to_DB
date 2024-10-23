USE alx_book_store;

CREATE TABLE IF NOT EXISTS books (
    book_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    genre VARCHAR(100),
    price DECIMAL(10, 2),
    PRIMARY KEY (book_id)
);

CREATE TABLE IF NOT EXISTS authors (
    author_id INT NOT NULL,
    author_name VARCHAR(255) NOT NULL,
    bio TEXT,
    PRIMARY KEY (author_id)
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id INT NOT NULL,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT,
    PRIMARY KEY (order_detail_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
