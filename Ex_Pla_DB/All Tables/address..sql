DROP TABLE IF EXISTS address;

CREATE TABLE address(
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    address_type VARCHAR(25),
    address_data VARCHAR(200),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);