use amigos;

select * from users;

select * from friendships;

SELECT users.first_name, users.last_name, user2.first_name ,user2.last_name FROM users
LEFT JOIN friendships fs ON fs.user_id= users.id
LEFT JOIN users as user2 ON fs.friend_id=user2.id;

--    Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.
select users.first_name, users.last_name from users 
left join friendships fs on users.id=fs.user_id where fs.friend_id=(select id from users where first_name = 'Kermit');

--    Devuelve el recuento de todas las amistades.
select count(friend_id) from friendships ;

--    Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
select  us.first_name, fs.user_id, count(fs.user_id) from friendships fs
inner join users us on us.id= fs.user_id
group by fs.user_id
order by count(fs.user_id) desc
limit 1;

--    Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.
insert into users (first_name, last_name, created_at)
values ('Adrian', 'Calcumil', now());
select * from users;
insert into friendships (user_id, friend_id, created_at)
values (
(select id from users where first_name='Adrian'),
(select id from users where first_name='Eli'),
now()
);
insert into friendships (user_id, friend_id, created_at)
values (
(select id from users where first_name='Adrian'),
(select id from users where first_name='Kermit'),
now()
);
insert into friendships (user_id, friend_id, created_at)
values (
(select id from users where first_name='Adrian'),
(select id from users where first_name='Marky'),
now()
);

select * from users;
select * from friendships;
--    Devuelve a los amigos de Eli en orden alfabético.
select user2.first_name, user2.last_name from users
left join friendships fs on users.id=fs.user_id
left join users as user2 ON fs.friend_id=user2.id
where users.first_name='Eli'
order by user2.first_name;
--    Eliminar a Marky Mark de los amigos de Eli.

 delete from friendships where friend_id = (select id from users where first_name='Marky') and
 user_id = (select id from users where first_name='Eli');

--    Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos
select users.first_name, users.last_name, concat (user2.first_name, ' ', user2.last_name) friend from users
left join friendships fs on users.id=fs.user_id
left join users as user2 ON fs.friend_id=user2.id;