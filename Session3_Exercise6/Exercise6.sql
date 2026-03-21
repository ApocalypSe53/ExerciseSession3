CREATE DATABASE LibraryDB;

CREATE TABLE library.Books
(
    book_id        INT PRIMARY KEY,
    title          VARCHAR(255) NOT NULL,
    author         VARCHAR(255) NOT NULL,
    published_year INT,
    available      BOOLEAN DEFAULT TRUE
);

CREATE TABLE library.Members
(
    member_id INT PRIMARY KEY,
    name      VARCHAR(255)        NOT NULL,
    email     VARCHAR(255) UNIQUE NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
);