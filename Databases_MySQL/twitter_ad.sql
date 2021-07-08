use twitter;

select * from users;
select * from faves;
select * from tweets;
select * from follows;

select users.id,users.first_name, users.last_name from users;
-- alias
select us.id, us.first_name, us.last_name from users us;

-- condiciones
select us.id, us.first_name, us.last_name from users us where us.id = 3;
select us.id, us.first_name, us.last_name from users us where us.id = 3 or us.id= 1;
select us.id, us.first_name, us.last_name from users us where us.id in (3,5,1);
select us.id, us.first_name, us.last_name from users us where us.first_name LIKE '%n'; 
select us.id, us.first_name, us.last_name from users us where us.first_name LIKE '%ra%';

-- ordenamiento
select * from users us
order by us.id desc ;

-- Relaciones
select fv.id, us.first_name, us.last_name, tw.tweet, tw.user_id
from faves fv, users us, tweets tw
where fv.user_id = us.id and fv.tweet_id = tw.id;

-- Join 
select fv.id, us.first_name, us.last_name, tw.tweet, tw.user_id
from faves fv
INNER JOIN users us ON fv.user_id = us.id
INNER JOIN tweets tw ON fv.tweet_id = tw.id;

-- INSERT
INSERT INTO users (first_name, last_name, handle, birthday, created_at, updated_at) 
VALUES('Michael', 'Jordan', 'AirJordan', '1975-07-22', '2021-07-05 20:11:00','2021-07-05 20:11:10');

select * from users;

-- UPDATE
UPDATE users SET birthday = '1963-02-07', updated_at='2021-07-05 20:15:00' WHERE id=6;
