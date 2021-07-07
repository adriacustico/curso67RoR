use twitter;
select * from users;
select * from faves;
select * from tweets;
select * from follows;

-- Insert 
INSERT INTO users (first_name, last_name,handle,birthday,created_at,updated_at) 
VALUES('Shaquille', "O'neal", 'Shaq', '1972-03-06', '2021-07-21 20:11:00', '2021-07-22 20:11:00');

-- Update
UPDATE users SET updated_at = '2021-01-01 23:11:00' WHERE id =7;

-- Delete
SET SQL_SAFE_UPDATES = 0;
DELETE FROM users WHERE id=7;
