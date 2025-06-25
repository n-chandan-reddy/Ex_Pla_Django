DROP TABLE IF EXISTS favourites;

CREATE TABLE favourites(
    user_id INT,
    product_id INT,
    PRIMARY KEY (user_id,product_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);