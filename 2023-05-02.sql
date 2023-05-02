create table Summer(
    sid number,
    class varchar2(20),
    price number

);
insert into Summer values(100,'FORTRAN',20000);
insert into Summer values(150,'PASCAL',15000);
insert into Summer values(200,'C',10000);
insert into Summer values(250,'FORTRAN',20000);

select *from Summer;

select sid,class from summer;

select price from summer where class='C';

select class from summer where price= (select max(price) from summer);

select count(*),sum(price) from summer;

delete from summer where sid=200;
select price from summer where class='C';
insert into Summer values(200,'C',10000);
delete from summer where class='JAVA';
insert into Summer values(null,'JAVA',25000);

select *from Summer;
select count(*) from summer;
select count(sid) from summer;
select count(*) from summer where sid is not null;
update summer set price=15000 where class='FORTRAN';
select *from summer;
select distinct price "FORTRAN 수강료" from summer where class='FORTRAN';
update summer set price=20000 where class='FORTRAN';
update summer set price=15000 where class='FORTRAN' and sid=100;
select *from summer;
select distinct price "FORTRAN 수강료" from summer where class='FORTRAN';
update summer set price=20000 where class='FORTRAN';
delete from summer  where sid is null;
select *from summer;

drop table SummerPrice;
create table SummerPrice(
    class varchar2(20),
    price integer
);
insert into SummerPrice values('FORTRAN',20000);
insert into SummerPrice values('PASCAL',15000);
insert into SummerPrice values('C',10000);
select *from summerprice;

CREATE TABLE SummerEnroll(
sid integer,
class varchar2(20)
);
insert into SummerEnroll values(100,'FORTRAN');
insert into SummerEnroll values(150,'PASCAL');
insert into SummerEnroll values(200,'C');
insert into SummerEnroll values(250,'FORTRAN');
select *from SummerEnroll;

select sid,class from SummerEnroll where class='C';

select distinct class from summerprice where price=(select max(price) from summerprice);
select count(*),sum(price) from  SummerPrice,SummerEnroll where SummerPrice.class=SummerEnroll.class;
select price as "c 수강료" from summerprice where class='C';
delete from summerenroll where sid=200;
select *from summerenroll;
select price as "c 수강료" from summerprice where class='C';
insert into summerprice values('JAVA',25000);
select *from summerprice;
update summerprice set price=15000 where class='FORTRAN';
select price as "FORTRAN 수강료" from summerprice where class='FORTRAN';