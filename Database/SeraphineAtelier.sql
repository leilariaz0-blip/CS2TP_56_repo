CREATE DATABASE IF NOT EXISTS SeraphineAtelier;
USE SeraphineAtelier ;

CREATE TABLE categories (
    category_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100),
    description TEXT
);


CREATE TABLE products (
    product_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    category_id INT(11),
    product_name VARCHAR(150),
    description TEXT,
    price DECIMAL(10,2),
    stock_quantity INT(11),
    image_url VARCHAR(255),
    rating DECIMAL(3,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE customers (
    customer_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(255),
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE admins (
    admin_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE orders (
    order_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    customer_id INT(11),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    status ENUM('Pending','Processed','Shipped','Delivered','Returned'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE orderitems (
    order_item_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    order_id INT(11),
    product_id INT(11),
    quantity INT(11),
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


CREATE TABLE basket (
    basket_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    customer_id INT(11),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE basketitems (
    basket_item_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    basket_id INT(11),
    product_id INT(11),
    quantity INT(11),
    FOREIGN KEY (basket_id) REFERENCES basket(basket_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


CREATE TABLE payments (
    payment_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    order_id INT(11),
    payment_method ENUM('Credit Card','Debit Card','Cash on Delivery','Online'),
    payment_status ENUM('Pending','Completed','Failed'),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


CREATE TABLE reviews (
    review_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    product_id INT(11),
    customer_id INT(11),
    rating INT(11),
    review_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE contactmessages (
    message_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    subject VARCHAR(150),
    message TEXT,
    status ENUM('Unread','Read','Replied'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);