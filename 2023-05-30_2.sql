select orderid,custid,saleprice from orders md where saleprice>(
    select avg(saleprice) from orders so where md.custid=so.custid);
    
select sum(saleprice) as total from orders where custid in(
    select custid from customer where address like '%대한민국%');
    
select custid from customer where address like '%대한민국%';

select orderid,saleprice from orders where saleprice >all(
    select saleprice from orders where custid=3);
    
select saleprice from orders where custid=3;    

select sum(saleprice) as total from orders od where exists(
    select * from customer cs where address like  '%대한민국%' and cs.custid=od.custid);
    
    