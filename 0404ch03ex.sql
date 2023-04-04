select *from book;
select *from orders;
select *from customer;
select *from imported_book;



select count( distinct publisher) from customer, Orders, Book where (customer.custid=Orders.custid) and (Book.bookid=Orders.bookid) and (customer.name='???');

select bookname, price, price-saleprice from customer, Orders, Book where (customer.custid=Orders.custid) and (Book.bookid=Orders.bookid) and (customer.name='???');




/*2-8*/
select name from Book, orders, customer MINUS select name from Book, orders, customer where (Customer.custid=orders.custid) and (orders.bookid=Book.bookid);

/*2-9*/
select sum(saleprice), avg(saleprice) from orders;

/*2-10*/
select sum(saleprice), avg(saleprice) from orders;

/*2-11*/
select name, bookname from Book, orders, Customer where orders.bookid=Book.bookid and orders.custid=Customer.custid;

/*2-12*/
select * from Book, orders where Book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from Book, orders where Book.bookid=orders.bookid);

/*2-13*/
select * from  Book, orders where Book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from Book, orders where Book.bookid=orders.bookid);