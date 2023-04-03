select *from book;
select *from orders;
select *from customer;
select *from imported_book;

select  bookname from book;

select bookname from book where price>20000;

select sum(saleprice) from orders where custid=1;

select count(*) from orders where custid=1;

select sum(saleprice) from customer, orders where customer.custid=orders.custid and customer.name like '???';

select count(*) from customer,orders where customer.custid=orders.custid and customer.name like '???';

select count(*) from book, customer, orders where book.bookid=orders.bookid and customer.custid=orders.custid and customer.name like '???';






