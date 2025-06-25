DROP TABLE IF EXISTS products;

CREATE TABLE products(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

/*
tables should be create in order
i created the products table first without the "on delete cascade"
later created favourites with foriegn key, product_id which had  "on delete cascade"
nxt, tried to add  "on delete cascade" in this file and run "DROP TABLE", but there was error
saying its referenced in other table.
to avoid creating tables from start,i used 

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS products;

SET FOREIGN_KEY_CHECKS = 1;

*/