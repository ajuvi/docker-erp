CREATE DATABASE erp;

CREATE TABLE empleats (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO empleats (firstname, lastname, email)
VALUES ('John', 'Doe', 'john@example.com');

INSERT INTO empleats (firstname, lastname, email)
VALUES ('Mary', 'Moe', 'mary@example.com');

INSERT INTO empleats (firstname, lastname, email)
VALUES ('Julie', 'Dooley', 'julie@example.com');
