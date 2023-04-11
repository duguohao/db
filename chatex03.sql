create table newbook(
    bookid number primary key,
    bookname varchar2(20) not null,
    publisher varchar2(20) unique,
    price number default 1000 check(price>1000));
    
    
create table newcustomer(
    custid number primary key,
    name varchar2(20),
    address varchar2(40),
    phone varchar2(30)
);

create table neworders(
    orderid number primary key,
    custid number  not null ,
    bookid number not null,
    saleprice number,
    orderdate date,
    foreign key(custid) references newcustomer(custid) on delete cascade
);
alter table newbook add isbn varchar2(13);

select *from newbook;
alter table newbook modify isbn number;

drop table newbook;

select *from book;

insert into book(bookid,bookname,publisher,price) values(11,'??? ??','??????',90000);



insert into book values(12,'??? ??','??????',90000);

insert into book(bookid,bookname,price,publisher) values(13,'??? ??',90000,'??????');

insert into book(bookid,bookname,publisher) values(14,'??? ??','??????');

select *from book;

insert into book(bookid,bookname,price,publisher)
    select bookid, bookname,price,publisher
    from imported_book;
    
    select *from book;
    
delete from book where bookid>20;

update customer 
set address='???? ??'
where custid=5;

update customer 
set address=(select address from customer where name='???')
where name='???';
select *from customer;

update customer set address='???? ??';





