DROP DATABASE IF EXISTS Motherduck;
CREATE DATABASE Motherduck;
USE Motherduck;

CREATE TABLE categories (
  cat_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  cat_title varchar(255) NOT NULL,
  cat_desc varchar(255) NOT NULL
);

INSERT INTO categories (cat_id, cat_title, cat_desc) VALUES
(1, 'POSTERS', 'OUR BEST SELECTION OF POSTERS'),
(2, 'STAMPS', 'OUR BEST SELECTION OF STAMPS'),
(3, 'ARTWORKS', 'OUR BEST SELECTION OF ARTWORKS'),
(4, 'POSTCARDS', 'OUR BEST SELECTION OF POSTCARDS');

CREATE TABLE products (
  product_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  p_cat_id int NOT NULL,
  cat_id int NOT NULL,
  date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  product_title varchar(255) NOT NULL,
  product_img1 text NOT NULL,
  product_img2 text NOT NULL,
  product_img3 text NOT NULL,
  product_price int NOT NULL,
  product_keywords varchar(255) NOT NULL,
  product_desc varchar(255) NOT NULL
);

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 1, 2, '2020-05-19 21:56:30', 'BLUE', 'duck1.png', 'duck1.png', 'duck1.png', 100, 'Poster', '<p>..</p>'),
(2, 1, 2, '2020-05-19 22:07:11', 'PINK', 'duck3.png', 'duck3.png', 'duck3.png', 100, 'Poster', '<p>..</p>'),
(3, 4, 2, '2020-05-19 22:07:30', 'GREY', 'duck4.png', 'duck4.png', 'duck4.png', 100, 'Poster', '<p>dd</p>'),
(4, 1, 1, '2020-05-19 22:07:49', 'OCEAN', 'duck11.png', 'duck11.png', 'duck11.png', 100, 'Poster', '<p>dd</p>');

CREATE TABLE product_categories (
  p_cat_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  p_cat_title varchar(255) NOT NULL,
  p_cat_desc varchar(255) NOT NULL
);

INSERT INTO product_categories (p_cat_id, p_cat_title, p_cat_desc) VALUES
(1, 'POLITICAL', 'DUCKS & POLITICS'),
(2, 'HISTORY', 'DUCKS THROUGH HISTORY'),
(3, 'COLORFUL', 'DUCKS AND THE RAINBOW'),
(4, 'TEXTURE', 'DUCKS WITH TEXTURE'),
(5, 'WHITE', 'DUCKS WHO LIKE MINIMALISTIC THINGS'),
(6, 'BLACK', 'DUCKS WHO ARE GOING THROUGH A FACE');


CREATE TABLE slider (
  slide_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  slide_name varchar(255) NOT NULL,
  slide_image text NOT NULL
);

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slider1.png'),
(2, 'Slide number 2', 'slider2.png'),
(3, 'Slide number 3', 'slider3.png'),
(4, 'Slide number 4', 'slider4.png');


CREATE TABLE users (
  idUsers int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  uidUsers TINYTEXT NOT NULL,
  emailUsers TINYTEXT NOT NULL,
  pwdUsers LONGTEXT NOT NULL
);

CREATE TABLE cart (
  p_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  ip_add varchar(255),
  qty int,
  size text(100)
);


CREATE TABLE customers (
  customer_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  customer_first varchar(255) NOT NULL,
  customer_last varchar(255) NOT NULL,
  customer_email varchar(255) NOT NULL,
  customer_pass varchar(255) NOT NULL,
  customer_address varchar(255) NOT NULL,
  customer_postcode varchar(255) NOT NULL,
  customer_country varchar(255) NOT NULL,
  customer_image varchar(255) NOT NULL,
  customer_ip varchar(255) NOT NULL

);


