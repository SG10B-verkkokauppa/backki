drop database if exists webshop;
create database webshop;
use webshop;
create table category (
  id int primary key auto_increment,
  name varchar(50) not null
);
create table product (
  id int primary key auto_increment,
  name varchar(100) not null,
  price double (10, 2) not null,
  image varchar(50),
  category_id int not null,
  description varchar(255),
  index category_id(category_id),
  foreign key (category_id) references category(id) on delete restrict
);


insert into category (name) values ('Konsolit');
insert into category (name) values ('Videopelit');
insert into category (name) values ('Lautapelit');
insert into category (name) values ('Kerailyesineet');

insert into product (name, price, image, category_id, description) values ('PlayStation 5', 580, "ps5.png", 1, "Tämä on ps5.");
insert into product (name, price, category_id) values ('Nintendo Switch', 300, 1);
insert into product (name, price, category_id) values ('Xbox Series X', 520, 1);
insert into product (name, price, category_id) values ('METAL GEAR SOLID V', 25, 2);
insert into product (name, price, category_id) values ('Lego: Harry Potter- Collection', 20, 2);
insert into product (name, price, category_id) values ('Crash Bandicoot - N. Sane Trilogy', 35, 2);
insert into product (name, price, category_id) values ('Super Mario Party', 55, 2);
insert into product (name, price, category_id) values ('Biomutant', 25, 2);
insert into product (name, price, category_id) values ('Riders Republic', 40, 2);
insert into product (name, price, category_id) values ('The Witcher III - Wild Hunt(GOTY)', 20, 2);
insert into product (name, price, category_id) values ('Tales of Symphonia Remastered', 48, 2);
insert into product (name, price, category_id) values ('Sniper Elite 5', 60, 2);
insert into product (name, price, category_id) values ('Pokemon Shield', 53, 2);
insert into product (name, price, category_id) values ('Afrikan tähti', 15, 3);
insert into product (name, price, category_id) values ('Smart10-visailupeli', 26, 3);
insert into product (name, price, category_id) values ('Scrabble', 29, 3);
insert into product (name, price, category_id) values ('Catan', 28, 3);
insert into product (name, price, category_id) values ('Rummikub Classic', 18, 3);
insert into product (name, price, category_id) values ('Monopoly Classic', 33, 3);
insert into product (name, price, category_id) values ('Ticket to Ride Europe', 40, 3);
insert into product (name, price, category_id) values ('Terraforming Mars', 39, 3);
insert into product (name, price, category_id) values ('Nemesis', 100, 3);
insert into product (name, price, category_id) values ('Fortuna', 23, 3);
insert into product (name, price, category_id) values ('Minecraft muki', 10, 4);
insert into product (name, price, category_id) values ('Game Boy avaimenperä', 8, 4);
insert into product (name, price, category_id) values ('Amiibo 8-bit Link', 25, 4);
insert into product (name, price, category_id) values ('Amiibo Charizard No. 33 (SSB Collection)', 25, 4);
insert into product (name, price, category_id) values ('Amiibo Luigi (Super Mario Series)', 25, 4);