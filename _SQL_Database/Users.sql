CREATE TABLE users (
                        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        username VARCHAR(20) NOT NULL UNIQUE,
                        email VARCHAR(40) NOT NULL UNIQUE,
                        password VARCHAR(255) NOT NULL,
                        balance double NOT NULL

);