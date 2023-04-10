select *from book;
select *from orders;
select *from customer;
select *from imported_book;



select bookname, price, price-saleprice 
    from customer, Orders, Book 
    where customer.custid=Orders.custid 
        and book.bookid=Orders.bookid 
        and customer.name like '박지성';


select bookname from book where not exists(select bookname from customer,orders
    where customer.custid=orders.custid 
        and orders.bookid=book.bookid 
        and customer.name LIKE '박지성');




/*2-8*/
select name from customer  where name not in(
        select name 
        from customer,orders
        where customer.custid=orders.custid
        );

/*2-9*/
select sum(saleprice), avg(saleprice) from orders;

/*2-10*/
select name,sum(saleprice) from customer,orders where customer.custid=orders.custid 
        group by name;

/*2-11*/
select name, bookname from Book, orders, Customer where orders.bookid=Book.bookid and orders.custid=Customer.custid;

/*2-12*/
select * from Book, orders where Book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from Book, orders where Book.bookid=orders.bookid);

/*2-13*/
select * from  Book, orders where Book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from Book, orders where Book.bookid=orders.bookid);
