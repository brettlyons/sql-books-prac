CREATE TABLE authors (
  id serial primary key,
  name varchar(80),
 	
);

CREATE TABLE books (
  id serial primary key,
  author_id int references authors(id) on delete cascade,
  isbn int,
  title varchar(80)
);