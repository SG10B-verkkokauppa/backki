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
create table order1 (
  fname varchar(255) not null,
  lname varchar(255) not null,
  address varchar(255) not null,
  pcode varchar(255) not null,
  city varchar(255) not null
);


insert into category (name) values ('Konsolit');
insert into category (name) values ('Videopelit');
insert into category (name) values ('Lautapelit');
insert into category (name) values ('Oheistuotteet');

insert into product (name, price, image, category_id, description) values ('PlayStation 5', 580, "images/ps5.png", 1, "Tämä on ps5.");
insert into product (name, price, image, category_id, description) values ('Nintendo Switch', 300, "images/switch.png", 1);
insert into product (name, price, image, category_id, description) values ('Xbox Series X', 520, "images/xboxseriesx.png", 1);
insert into product (name, price, image, category_id, description) values ('METAL GEAR SOLID V', 25, "images/mgsv.png", 2);
insert into product (name, price, image, category_id, description) values ('Lego: Harry Potter- Collection', 20, "images/legoharry.png", 2);
insert into product (name, price, image, category_id, description) values ('Crash Bandicoot - N. Sane Trilogy', 35, "images/crash.png", 2);
insert into product (name, price, image, category_id, description) values ('Super Mario Party', 55, "images/mario.png", 2);
insert into product (name, price, image, category_id, description) values ('Biomutant', 25, "images/biomutant.png", 2);
insert into product (name, price, image, category_id, description) values ('Riders Republic', 40, "images/riders.png", 2);
insert into product (name, price, image, category_id, description) values ('The Witcher III - Wild Hunt(GOTY)', 20, "images/witcher.png", 2);
insert into product (name, price, image, category_id, description) values ('Tales of Symphonia Remastered', 48, "images/symphony.png", 2);
insert into product (name, price, image, category_id, description) values ('Sniper Elite 5', 60, "images/sniperelite.png", 2);
insert into product (name, price, image, category_id, description) values ('Pokemon Shield', 53, "images/pokemonshield.png", 2);
insert into product (name, price, image, category_id, description) values ('Afrikan tähti', 15, "images/afrikantahti.png", 3);
insert into product (name, price, image, category_id, description) values ('Smart10-visailupeli', 26, "images/smart10.png", 3);
insert into product (name, price, image, category_id, description) values ('Scrabble', 29, "images/scrabble.png", 3);
insert into product (name, price, image, category_id, description) values ('Catan', 28, "images/catan.png", 3);
insert into product (name, price, image, category_id, description) values ('Rummikub Classic', 18, "images/rummikub.png", 3);
insert into product (name, price, image, category_id, description) values ('Monopoly Classic', 33, "images/monopoly.png", 3);
insert into product (name, price, image, category_id, description) values ('Ticket to Ride Europe', 40, "images/tickettoride.png", 3);
insert into product (name, price, image, category_id, description) values ('Terraforming Mars', 39, "images/terraformingmars.png", 3);
insert into product (name, price, image, category_id, description) values ('Nemesis', 100, "images/nemesis.png", 3);
insert into product (name, price, image, category_id, description) values ('Fortuna', 23, "images/fortuna.png", 3);
insert into product (name, price, image, category_id, description) values ('Minecraft muki', 10, "images/minecraftmug.png", 4);
insert into product (name, price, image, category_id, description) values ('Game Boy avaimenperä', 8, "images/gameboy.png", 4);
insert into product (name, price, image, category_id, description) values ('Amiibo 8-bit Link', 25, "images/amiibolink.png", 4);
insert into product (name, price, image, category_id, description) values ('Amiibo Charizard No. 33 (SSB Collection)', 25, "images/charizardamiibo.png", 4);
insert into product (name, price, image, category_id, description) values ('Amiibo Luigi (Super Mario Series)', 25, "images/amiiboluigi.png", 4);