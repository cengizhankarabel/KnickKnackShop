CREATE TABLE users (
                        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        username VARCHAR(20) NOT NULL UNIQUE,
                        email VARCHAR(40) NOT NULL UNIQUE,
                        password VARCHAR(255) NOT NULL,
                        balance double NOT NULL

);

CREATE TABLE carts (
                        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        totalAmount double NOT NULL,
                        paymentTypeId ENUM ('DEBIT','CREDIT') NOT NULL,
                        user_id INT REFERENCES users(id)
);

CREATE TABLE shop (
                        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(20) NOT NULL,
                        price double NOT NULL,
                        description VARCHAR(40) NOT NULL

);

CREATE TABLE cartitems (
                             id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                             shop_id INT REFERENCES shop(id),
                             cart_id INT REFERENCES carts(id)

);








