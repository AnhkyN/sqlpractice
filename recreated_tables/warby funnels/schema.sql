/*CREATE TABLE funnels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255),
    user_id CHAR(36),
    response VARCHAR(255)
);*/

CREATE TABLE user_preferences (
    user_id CHAR(36),
    style VARCHAR(50),
    fit VARCHAR(50),
    shape VARCHAR(50),
    color VARCHAR(50)
);

CREATE TABLE orders (
    user_id CHAR(36),
    number_of_pairs VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE purchases (
    user_id CHAR(36),
    product_id INT,
    style VARCHAR(50),
    model_name VARCHAR(50),
    color VARCHAR(50),
    price INT
);