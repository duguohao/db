select *from book;
select *from orders;
select *from customer;
select *from imported_book;

select name,saleprice  from Customer,orders where customer.custid=orders.custid;

/*left outer join*/
select customer.name,saleprice from customer left outer join orders on customer.custid=orders.custid;

/*right outer join*/
select customer.name,saleprice from customer right outer join orders on customer.custid=orders.custid; 

select customer.name,saleprice  from Customer,orders where customer.custid=orders.custid;

/*?? ?? ??? ??*/
select max(price) from book;

/*?? ??  ????*/
select bookname from book where price=35000;

select bookname from book where price=(select max(price) from book); 

/*3-28*/
select custid from orders;

/*??? ?? ??*/
select name from customer where custid in(1,2,3,4);

/*3-2 ??? ??? ???? ?? ??9*/
select name from customer where custid in(select custid from orders);

/*????? ?? ?? ???? ?? ??? ??*/
select b1.bookname from book b1 where b1.price>(select avg(b2.price) from book b2 where b2.publisher = b1.publisher);