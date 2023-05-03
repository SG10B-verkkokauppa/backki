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
  index category_id(category_id),
  foreign key (category_id) references category(id) on delete restrict
);

insert into category (name) values ('Konsolit');
insert into category (name) values ('Videopelit');
insert into category (name) values ('Lautapelit');
insert into category (name) values ('Kerailyesineet');

insert into product (name, price, category_id) values ('PlayStation 5', 580, 1);
insert into product (name, price, category_id) values ('METAL GEAR SOLID V', 25, 2);
insert into product (name, price, category_id) values ('Afrikan tähti', 15, 3);
insert into product (name, price, category_id) values ('joku figuuri emt', 40, 4);