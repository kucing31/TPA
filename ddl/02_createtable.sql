use tpa_04;

CREATE TABLE users (
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50)  , 
email VARCHAR(50)  , 
password VARCHAR(20)
);

CREATE TABLE transactions (
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
time DATE DEFAULT CURRENT_TIMESTAMP,
total INT(15)  ,
user_id INT(11) ,
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE categories (
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE products (
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50)  ,
description VARCHAR(100)  ,
price INT(15)  ,
category_id INT(11),
FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE transaction_products (
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
quantity INT(11)  ,
transaction_id INT(11) ,
product_id INT(11) ,
FOREIGN KEY (transaction_id) REFERENCES transactions(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);


