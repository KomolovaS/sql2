CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2)
);

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(id),
    customer_id INT,
    sale_date DATE,
    quantity INT,
    total_price NUMERIC(10,2)
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    registration_date DATE
);

INSERT INTO products (name, category, price) VALUES
('Toy Car', 'Vehicles', 15.99),
('Doll', 'Dolls', 22.50),
('Puzzle', 'Games', 9.99),
('Action Figure', 'Figures', 12.00),
('Lego Set', 'Building Blocks', 49.99),
('Teddy Bear', 'Plush', 19.99),
('Bicycle', 'Vehicles', 120.00),
('Ball', 'Sports', 10.00),
('Board Game', 'Games', 20.00),
('Building Blocks', 'Building Blocks', 30.00),
('Rubik’s Cube', 'Games', 14.99),
('Toy Train', 'Vehicles', 35.00),
('Toy Robot', 'Figures', 40.00),
('Soft Toy', 'Plush', 18.00),
('Dollhouse', 'Dolls', 65.00),
('Trampoline', 'Sports', 120.00),
('Drone', 'Electronics', 200.00),
('Remote Control Car', 'Vehicles', 45.00),
('Scooter', 'Sports', 75.00),
('Magic Set', 'Toys', 25.00);

INSERT INTO customers (name, registration_date) VALUES
('Alice Johnson', '2023-01-15'),
('Bob Smith', '2022-07-11'),
('Charlie Brown', '2023-06-24'),
('David Lee', '2023-04-05'),
('Eve White', '2023-02-20'),
('Frank Black', '2023-05-11'),
('Grace Green', '2023-03-02'),
('Hank Blue', '2023-01-18'),
('Ivy Red', '2023-07-08'),
('Jack Gray', '2023-03-15'),
('Lily Pink', '2023-04-18'),
('Mia Purple', '2023-02-10'),
('Noah Yellow', '2023-08-09'),
('Olivia Brown', '2023-06-13'),
('Paul White', '2023-05-23'),
('Quinn Black', '2023-07-16'),
('Rachel Green', '2023-01-25'),
('Sam Blue', '2023-03-30'),
('Tina Red', '2023-06-18'),
('Ursula Gray', '2023-08-03');

INSERT INTO sales (product_id, customer_id, sale_date, quantity, total_price) VALUES
(1, 1, '2023-01-15', 2, 31.98),
(2, 2, '2023-02-10', 1, 22.50),
(3, 3, '2023-03-05', 3, 29.97),
(4, 4, '2023-04-01', 1, 12.00),
(5, 5, '2023-05-10', 2, 99.98),
(6, 6, '2023-06-20', 1, 19.99),
(7, 7, '2023-07-01', 1, 120.00),
(8, 8, '2023-01-18', 3, 30.00),
(9, 9, '2023-02-25', 1, 20.00),
(10, 10, '2023-03-10', 2, 60.00),
(11, 11, '2023-04-15', 4, 59.96),
(12, 12, '2023-05-20', 1, 14.99),
(13, 13, '2023-06-07', 2, 80.00),
(14, 14, '2023-07-21', 1, 18.00),
(15, 15, '2023-08-03', 3, 75.00),
(16, 16, '2023-05-17', 2, 90.00),
(17, 17, '2023-06-05', 1, 40.00),
(18, 18, '2023-01-10', 1, 200.00),
(19, 19, '2023-04-28', 3, 135.00),
(20, 20, '2023-08-14', 2, 150.00);
