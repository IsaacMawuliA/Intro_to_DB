CREATE TABLE IF NOT EXISTS authors (
    author_id INT NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(255) NOT NULL,
    bio TEXT,
    PRIMARY KEY (author_id)
);

CREATE TABLE IF NOT EXISTS books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    genre VARCHAR(100),
    price DECIMAL(10, 2),
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id)
);

