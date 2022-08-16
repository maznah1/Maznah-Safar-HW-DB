create database store;


create table countries(
    code int primary key,
    name  varchar(20) unique,
    continent_name varchar(20) not null

);

create table users(

    id int primary key ,
    full_name varchar(20),
    email varchar(20) unique ,
    gender char(1)check ( gender='m' or gender='f' ),
    date_of_birth varchar(15),
    created_at datetime,
   country_code int,
    foreign key (country_code )references countries(code)


);

create table orders(
    id int primary key ,
    user_id int ,
    status varchar(6)check ( status='start'or status='finish'),
    created_at datetime

);
create table order_products(
    order_id int  ,
     product_id int ,
     quantity int default 0,
      foreign key  (order_id)references orders(user_id) ,
      foreign key (product_id)references products(id)


);
create table products(
    id int primary key ,
    name varchar(10) not null ,
    price int  default 0,
    status varchar(10) check ( status='valid'or status='expired' ),
    created_at datetime


);
insert into countries values (452,'mzan','riyadh');
insert into users values  (123,'sara','sarat@gmail.com','m','8/15/200','riyadh','riyadh');
insert into orders values (789,654,'saudi');
insert into products values (321,'ddd',80,'finshed','saudi');
insert into order_products values (654,321,'good');
update countries set name='riyadh'where continent_name='jedh';
 delete from products where status;
