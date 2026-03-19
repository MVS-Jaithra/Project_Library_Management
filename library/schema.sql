-- LibraVault Database Schema
-- Run this in MySQL Workbench or mysql CLI if you prefer manual setup

CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(100) UNIQUE NOT NULL,
    password   VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS books (
    book_id  INT AUTO_INCREMENT PRIMARY KEY,
    title    VARCHAR(255) NOT NULL,
    author   VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 0
);

-- Optional: seed some sample books
INSERT INTO books (title, author, quantity) VALUES
  ('The Great Gatsby',         'F. Scott Fitzgerald', 5),
  ('To Kill a Mockingbird',    'Harper Lee',          3),
  ('1984',                     'George Orwell',       7),
  ('Pride and Prejudice',      'Jane Austen',         4),
  ('The Alchemist',            'Paulo Coelho',        6);
