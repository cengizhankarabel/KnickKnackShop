CREATE TABLE cartitems (
                             id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                             shop_id INT REFERENCES shop(id),
                             cart_id INT REFERENCES carts(id)

);