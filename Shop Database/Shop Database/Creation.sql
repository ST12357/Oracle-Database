drop table Wholesaler_orders;
drop table customer_orders;
drop table Wholesaler;
drop table customer;
drop table product;
drop table Accounts;

create table customer(
    customer_id integer,
    customer_name varchar(20),
    customer_tel varchar(20),
    customer_email varchar(30), 
    paid integer,
    primary key (customer_id)
	);

insert into customer values (1,'TXAB','3456789','x@gmail.com',1200);
insert into customer values (2,'TXA','45768','y@gmail.com',1300);
insert into customer values (3,'TdXB','453678','a@gmail.com',1400);
insert into customer values (4,'TsXB','456578','b@gmail.com',1400);
insert into customer values (5,'TaXB','456768','c@gmail.com',1400);
insert into customer values (6,'TddXB','456718','d@gmail.com',1400);
insert into customer values (7,'TasXB','4567800','e@gmail.com',1400);
insert into customer values (8,'TdsXB','4567788','f@gmail.com',1400);
insert into customer values (9,'TSDFXB','45675668','g@gmail.com',1400);
insert into customer values (10,'TAFSXB','4567548','h@gmail.com',1400);

create table product(
    product_id integer,
    product_name varchar(20),
    product_price integer, 
    product_origin varchar(15),
    product_instock integer,
    primary key (product_id)
	);

insert into product values (1,'qwe',250,'B',333);
insert into product values (2,'qwe',250,'B',111);
insert into product values (3,'qwe',250,'B',222);
insert into product values (4,'qwe',250,'B',222);
insert into product values (5,'qwe',250,'B',222);
insert into product values (6,'qwe',250,'B',222);
insert into product values (7,'qwe',250,'B',222);
insert into product values (8,'qwe',250,'B',222);
insert into product values (9,'qwe',250,'B',222);
insert into product values (10,'qwe',250,'B',222);



create table Wholesaler(
    wholesaler_id integer,
    wholesaler_name varchar(20),
    wholesaler_tel varchar(20),
    wholesaler_email varchar(30),
    product_id integer,
    paid integer,
    primary key (wholesaler_id),
    foreign key (product_id) references product (product_id) 
	);


insert into Wholesaler values (1,'TXAB','3456789','x@gmail.com',1,10000);
insert into Wholesaler values (2,'TXA','45768','y@gmail.com',2,12100);
insert into Wholesaler values (3,'TXB','45678','z@gmail.com',3,12456);
insert into Wholesaler values (4,'TsXB','456578','b@gmail.com',1,1400);
insert into Wholesaler values (5,'TaXB','456768','c@gmail.com',1,1400);
insert into Wholesaler values (6,'TddXB','456718','d@gmail.com',2,1400);
insert into Wholesaler values (7,'TasXB','4567800','e@gmail.com',3,1400);
insert into Wholesaler values (8,'TdsXB','4567788','f@gmail.com',1,1400);
insert into Wholesaler values (9,'TSDFXB','45675668','g@gmail.com',1,1400);
insert into Wholesaler values (10,'TAFSXB','4567548','h@gmail.com',1,1400);

create table customer_orders(
    orderno integer ,
    customer_id integer,
    order_id integer,
    amount integer,
    unit_price integer,
    Paid integer,
    foreign key (order_id) references product (product_id),
    foreign key (customer_id) references customer (customer_id) 
	);



create table Wholesaler_orders(

    orderno integer,
    Saler_id integer,
    order_id integer,
    amount integer,
    unit_price integer,
    Paid integer,
    
    foreign key (order_id) references product (product_id),
    foreign key (Saler_id) references Wholesaler (Wholesaler_id) 
	);



Create table Accounts(

Money_given integer,
Money_earned integer,
Product_in_stock integer

);


Commit;

select * from customer;

select * from wholesaler;

select * from product;

select sum(Paid) from customer_orders where customer_id=1;

select sum(paid) from wholesaler;
select sum(Paid) from customer_orders;