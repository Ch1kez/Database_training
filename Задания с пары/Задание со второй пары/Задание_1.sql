create database if not exists films;

use films;

create table if not exists films (
    id int not null auto_increment primary key,
    name varchar(255),
    duration int,
    author varchar(255)
);

create table if not exists genre (
    id int not null auto_increment primary key,
    name varchar(255)
);

create table if not exists film_genre (
    id_film int not null,
    id_genre int not null,
    foreign key (id_film) references films(id),
    foreign key (id_genre) references genre(id)
); 
