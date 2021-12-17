CREATE TABLE carts (
                        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        totalAmount double NOT NULL,
                        paymentTypeId ENUM ('DEBIT','CREDIT') NOT NULL,
                        user_id INT REFERENCES users(id)
);