drop table if exists product_tb;

CREATE TABLE product_tb (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    price INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_tb (name, price) values ('banana', 1000);
INSERT INTO product_tb (name, price) values ('apple', 500);
INSERT INTO product_tb (name, price) values ('melon', 2000);
