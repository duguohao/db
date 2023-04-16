
/*?? */
drop table usersd;

    create table usersd(
    userid number primary key,
    username varchar(20),
    useraddress varchar(20)
);


insert into usersd values(3,'홍길동','홍길동');
insert into usersd values(4,'김철수','잠실');
insert into usersd values(9,'박영희','강남');

select *from usersd;


/*극장*/
drop table theater;
create table theater (
    theaterid number  primary key,
    theatername varchar2(20),
    theateraddress varchar2(20)
);

insert into theater(theaterid,theatername,theateraddress) values(1,'롯데', '잠실');
insert into theater(theaterid, theatername, theateraddress) values(2,'메가', '강남');
insert into theater(theaterid, theatername, theateraddress) values(3,'대한', '잠실');
select *from theater;


/*상영관 */
drop table cinema;
create table cinema (
    theaterid number not null ,
    cinemaid number  primary key,
    moviename varchar2(20),
    price number,
    seat number,
    foreign key (theaterid) references theater (theaterid)
    );
    
    insert into cinema(theaterid, cinemaid, moviename, price, seat) values(1, 1, '어려운 영화', 15000, 48);
    insert into cinema(theaterid, cinemaid, moviename, price, seat) values(3, 3, '멋진 영화', 7500, 120);
    insert into cinema(theaterid, cinemaid, moviename, price, seat) values(3, 2, '재밌는 영화', 8000, 110);
    select *from cinema;
    
/*?? */    
drop table reservation;
create table reservation (
    theaterid number not null,
    cinemaid number not null,
    userid number not null,
    seatid number,
    datem date,
    foreign key (theaterid) references theater (theaterid),
    foreign key (cinemaid) references cinema (cinemaid),
    foreign key (userid) references usersd (userid)
);

insert into reservation(theaterid, cinemaid, userid, seatid, datem) values(3,2,3,15,'2020-09-01');   
insert into reservation(theaterid, cinemaid, userid, seatid, datem) values(3,3,4,16,'2020-09-01');  
insert into reservation(theaterid, cinemaid, userid, seatid, datem) values(1,1,9,48,'2020-09-01');
select *from reservation;


/*1.1*/
select   theatername, theateraddress from  theater;
/*1.2*/
select *from   theater where theateraddress = '잠실';
/*1.3*/
select username from   usersd where  useraddress = '잠실';
/*1.4*/
select   theaterid, cinemaid, moviename  from  cinema where price <= 8000;
/*1.5*/
select  distinct theater.theateraddress, usersd.username from theater,  usersd where theater.theateraddress= usersd.useraddress;


/*2.1*/
select  count(*)  from theater ;

/*2.2*/
select round(avg(price))from  cinema;
/*2.3*/
select count(*) from reservation,usersd where reservation.userid=usersd.userid and datem ='2020-09-01';


/*3.1*/
select   moviename from  theater,cinema
where  theater.theatername = '대한' and theater.theaterid = cinema.theaterid;
/*3.2*/
select username from usersd where userid in(select userid from reservation
    where theaterid=(select theaterid from theater where theatername='대한'));

/*3.3*/
select   moviename  from  theater,cinema
where theater.theatername = '대한' and theater.theaterid = cinema.theaterid;


