CREATE TABLE products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    subcategory VARCHAR(50)
);

CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    province VARCHAR(50),
    store_type VARCHAR(50)
);

CREATE TABLE inflation_index (
    date DATE,
    category VARCHAR(50),
    inflation_rate DECIMAL(5,2),
    PRIMARY KEY (date, category)
);

CREATE TABLE sales_transactions (
    transaction_id INT PRIMARY KEY,
    date DATE,
    store_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
