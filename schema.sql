CREATE TABLE items (
    id INT,
    title VARCHAR(100),
    year INT,
    category VARCHAR(50),
    creator_id INT
);

CREATE TABLE creators (
    id INT,
    name VARCHAR(100),
    country VARCHAR(50)
);