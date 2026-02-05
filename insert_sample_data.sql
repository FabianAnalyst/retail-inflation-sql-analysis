-- Insert products
INSERT INTO products VALUES (1, 'Food', 'Bread');
INSERT INTO products VALUES (2, 'Food', 'Milk');
INSERT INTO products VALUES (3, 'Clothing', 'T-Shirt');
INSERT INTO products VALUES (4, 'Household', 'Detergent');

-- Insert stores
INSERT INTO stores VALUES (101, 'Gauteng', 'Supermarket');
INSERT INTO stores VALUES (102, 'Western Cape', 'Supermarket');
INSERT INTO stores VALUES (103, 'KwaZulu-Natal', 'Convenience');

-- Insert inflation data
INSERT INTO inflation_index VALUES ('2024-01-01', 'Food', 7.2);
INSERT INTO inflation_index VALUES ('2024-01-01', 'Clothing', 3.9);
INSERT INTO inflation_index VALUES ('2024-01-01', 'Household', 6.1);

-- Insert sales transactions
INSERT INTO sales_transactions VALUES (1, '2024-01-03', 101, 1, 3, 15.00);
INSERT INTO sales_transactions VALUES (2, '2024-01-03', 101, 2, 2, 20.00);
INSERT INTO sales_transactions VALUES (3, '2024-01-03', 102, 3, 1, 120.00);
INSERT INTO sales_transactions VALUES (4, '2024-01-04', 103, 4, 2, 40.00);
