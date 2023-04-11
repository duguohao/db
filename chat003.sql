
/*1*/
insert into book VALUES(11, '스포츠세계', '대한미디어', 10000);
select * from Book;


/*2*/
delete from Book where publisher='삼성당';

/*3*/
delete from Book where publisher='이상미디어';



/*4*/
update book set publisher='대한출판사' where publisher like '대한미디어';
select * from book;




/*5*/
create table bookcompany(
    name varchar(20) primary key,
    address varchar(20),
    begin date
);

alter table bookcompany add webaddress varchar(30);

/*7*/
insert into bookcompany(name,address,begin,webaddress) values('한빗아카미','서울시 마포구','1993-01-01','http://hanbit.co.kr');

select *from bookcompany;
