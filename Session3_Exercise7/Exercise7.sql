CREATE SCHEMA sales;

CREATE TABLE sales.Products
(
    product_id     SERIAL PRIMARY KEY,
    product_name   VARCHAR(255)   NOT NULL,
    price          NUMERIC(10, 2) NOT NULL,
    stock_quantity INTEGER        NOT NULL
);

CREATE TABLE sales.Orders
(
    order_id   SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    member_id  INTEGER,
    FOREIGN KEY (member_id) REFERENCES library.Members (member_id)
        ON DELETE SET NULL
);


CREATE TABLE sales.OrderDetails
(
    order_detail_id SERIAL PRIMARY KEY,
    order_id        INTEGER,
    product_id      INTEGER,
    quantity        INTEGER NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (order_id) REFERENCES sales.Orders (order_id)
        ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES sales.Products (product_id)
);