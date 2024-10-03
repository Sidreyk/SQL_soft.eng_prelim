CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(50),
    email_address VARCHAR(50)
);

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(50),
    email_address VARCHAR (50)
);

CREATE TABLE Branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(50),
  	branch_address VARCHAR (50),
    branch_city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    branch_id VARCHAR(50),
    order_date VARCHAR(50)
);

CREATE TABLE Menu_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(50),
    item_price VARCHAR(50)
);

CREATE TABLE OrderItems (
    order_id INT,
    item_id INT,
    item_quantity INT
);
