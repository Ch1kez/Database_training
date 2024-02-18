CREATE DATABASE IF NOT EXISTS EXAMPLE;
use EXAMPLE;

create table Persons(
  ID INT NOT NULL AUTO_INCREMENT,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Addreess VARCHAR(255),
    PRIMARY KEY(ID)
)AUTO_INCREMENT=100;

create table Persons_1(
  ID INT NOT NULL AUTO_INCREMENT,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Addreess VARCHAR(255),
    PRIMARY KEY(ID)
)AUTO_INCREMENT=100;

create table books(
  book_id INT NOT NULL,
    autor_id INT NOT NULL,
    book_name VARCHAR(255) NOT NULL,
    book_category VARCHAR(255)
);

create table autors(
  ID INT NOT NULL PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL
);

ALTER TABLE books ADD PRIMARY KEY(book_id);
ALTER TABLE books ADD FOREIGN KEY(autor_id) REFERENCES autors(ID);

create table Orders(
 id int primary key auto_increment,
    customer_id int, 
    created_at date, 
    foreign key (customer_id) references customers(id) on delete cascade
);