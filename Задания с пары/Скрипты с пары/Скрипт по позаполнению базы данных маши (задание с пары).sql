use films;
-- Заполнение таблицы "films"
INSERT INTO films (name, duration, author) VALUES
    ('Фильм 1', 120, 'Автор 1'),
    ('Фильм 2', 90, 'Автор 2'),
    ('Фильм 3', 150, 'Автор 3');

-- Заполнение таблицы "genre"
INSERT INTO genre (name) VALUES
    ('Жанр 1'),
    ('Жанр 2'),
    ('Жанр 3');

-- Заполнение таблицы "film_genre"
INSERT INTO film_genre (id_film, id_genre) VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (3, 1),
    (3, 3);

select * from films;