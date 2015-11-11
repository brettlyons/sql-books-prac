CREATE TABLE authors (
  id serial primary key,
  namOfAuthor varchar(80)
);

CREATE TABLE books (
  id serial primary key,
  author_id int references authors(id) on delete cascade,
  isbn int,
  title varchar(80)
);

INSERT INTO
	authors
VALUES
	(default, 'Steven King'),
	(default, 'John Grisham'),
	(default, 'Kyle Simpson');

INSERT INTO
	books
VALUES
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'Steven King'), 1234567890, 'It'),
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'Steven King'), 1234567891, 'The Shining'),
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'John Grisham'), 1234567892, 'The Runaway Jury'),
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'John Grisham'), 1234567893, 'The Pelican Brief'),
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'Kyle Simpson'), 1234567894, 'You don''t know JS: scope and closure'),
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'Kyle Simpson'), 1234567895, 'You don''t know JS: this and Object Prototypes'),
	(default, (SELECT id FROM authors WHERE namOfAuthor = 'Steven King'), 1234567896, 'Carrie');
