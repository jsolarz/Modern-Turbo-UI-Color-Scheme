-- SQL Reference File for Theme Testing

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (id, name, email)
VALUES (1, 'Alice', 'alice@example.com');

SELECT id, name, email
FROM users
WHERE email LIKE '%example.com%'
ORDER BY id DESC;
