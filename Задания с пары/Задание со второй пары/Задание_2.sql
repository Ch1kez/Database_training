create database if not exists sings;

use sings;

create table if not exists sing (
    id int not null auto_increment primary key,
    name varchar(255),
    duration int
);

create table if not exists singer (
    id int not null auto_increment primary key,
    name varchar(255)
);

create table if not exists singer_sings (
    id_sing int not null,
    id_singer int not null,
    foreign key (id_sing) references sing(id),
    foreign key (id_singer) references singer(id)
); 
