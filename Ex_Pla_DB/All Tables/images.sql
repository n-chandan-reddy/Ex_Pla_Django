DROP Table IF EXISTS images;

CREATE TABLE images(
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    image_data LONGBLOB,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);