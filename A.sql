--drop--
DROP TABLE requests;
DROP TABLE products;
DROP TABLE orders;
DROP TABLE customers;

--create table--
CREATE TABLE customers(
    customer_ID NUMBER(3),
    name VARCHAR(25),
    address VARCHAR(50),
    PRIMARY KEY(customer_ID)
);
CREATE TABLE orders(
    order_ID NUMBER(5),
    orderDate DATE,
    customer_ID NUMBER(3),
    PRIMARY KEY(order_ID),
    FOREIGN KEY(customer_ID) REFERENCES customers(customer_ID)
);
CREATE TABLE products(
    product_ID NUMBER(2),
    description VARCHAR(28),
    finish VARCHAR(10),
    price FLOAT(3) CHECK (price <=8989.99 AND price >= 0),
    PRIMARY KEY (product_ID)
);
CREATE TABLE requests(
    order_ID NUMBER(5),
    product_ID NUMBER(2),
    quantity NUMBER(4) CHECK(quantity <=50 AND quantity >= 1),
    PRIMARY KEY(order_ID, product_ID),
    FOREIGN KEY(order_ID) REFERENCES orders(order_ID),
    FOREIGN KEY(product_ID) REFERENCES products(product_ID)
);

--delete--
DELETE FROM customers;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM requests;

--insert--
--CUSTOMERS
INSERT INTO customers 
    VALUES (2, 'CASUAL FURNITURE','PLANO, TX');
INSERT INTO customers
    VALUES (6, 'MOUNTAIN GALLERY','BOULDER, CO');
    
--ORDERS    
INSERT INTO orders
    VALUES (1006, TO_DATE('24-MAR-10','dd-Mon-yy'), 2);
INSERT INTO orders
    VALUES (1007, TO_DATE('25-MAR-10','dd-Mon-yy'), 6);
INSERT INTO orders
    VALUES (1008, TO_DATE('25-MAR-10','dd-Mon-yy'), 6);
INSERT INTO orders
    VALUES (1009, TO_DATE('26-MAR-10','dd-Mon-yy'), 2);
    
--PRODUCTS
INSERT INTO products
    VALUES(10, 'WRITING DESK', 'OAK', 425);
INSERT INTO products
    VALUES(30, 'DINING TABLE', 'ASH', NULL);
INSERT INTO products
    VALUES(40, 'ENTERTAINMENT CENTER', 'MAPLE', 650);
INSERT INTO products
    VALUES(70, 'CHILDRENS DRESSER', 'PINE', 300);
    
--REQUESTS
INSERT INTO requests
    VALUES(1006,10,4);
INSERT INTO requests
    VALUES(1006,30,2);
INSERT INTO requests
    VALUES(1006,40,1);
INSERT INTO requests
    VALUES(1007,40,3);
INSERT INTO requests
    VALUES(1007,70,2);
INSERT INTO requests
    VALUES(1008,70,1);
INSERT INTO requests
    VALUES(1009,10,2);
INSERT INTO requests
    VALUES(1009,40,1);

--select--    
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM requests;