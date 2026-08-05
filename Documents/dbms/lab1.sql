-- create database playstore;

-- use playstore;
-- create table developers(
-- developerid int primary key,
-- developername varchar(60) not null,
-- country varchar(30) ,
-- foundedyear int 
-- );

-- insert into developers
-- values
-- (101,'google','usa',1998),
-- (102,'facebook','UK',2004),
-- (103,'instagram','USA',2006),
-- (104,'BYJUS','INDIA',2011),
-- (105,'canva','australia',2012);

-- create table publishers(
-- publisherid int primary key,
-- publishername varchar(60),
-- headoffice varchar(40),
-- supportemail varchar(60)
-- );

-- insert into publishers
-- values
-- (201,'googleplay','california','support@google.com'),
-- (202,'samsung','seaul','support@samsung.com'),
-- (203,'huawei','shenzhen','support@huawei.com'),
-- (204,'amazon','seattle','support@seattle.com');

-- create table categories(
-- categoryid int primary key,
-- categoryname varchar(40),
-- minimumage int
-- );
-- insert into categories
-- values
-- (301,'education',3),
-- (302,'productivity',3),
-- (303,'music',12),
-- (304,'social',13),
-- (305,'gaming',16);



-- select * from categories;

-- create table apps(
-- appid int primary key,
-- appname varchar(60),
-- developersid int,
-- publisherid int,
-- categoryid int,
-- rating decimal,
-- downloads int,
-- price decimal
-- );

-- insert into apps
-- values
-- (1001,'googleclassroom',101,201,301,4.6,50000000,0),
-- (1002,'googlekeep',102,202,302,4.5,60000000,0),
-- (1003,'instagram',103,203,303,4.4,70000000,0),
-- (1004,'spotify',104,204,304,4.3,80000000,0),
-- (1005,'canva',105,205,305,4.2,90000000,0),
-- (1006,'BYJUS',106,206,306,4.1,100000000,299),
-- (1007,'candycrush',107,207,307,4.0,110000000,0),
-- (1008,'templerun',108,208,308,4.2,120000000,0);



-- select * from apps;

#TASK1

-- insert into developers() values(111,'openAI','USA',2015);
-- insert into categories() values(123,'ai',12);
-- insert into apps() values(1010,'chatgpt',111,222,322,4.2,23000000,0);
-- update apps set rating=4.5 where appname='templerun';
-- delete from developers where developerid=105;

#TASK2

update publishers set supportemail='support123@samsung' where publishername='samsung';
insert into apps values(112,'abc',1234,333,4.9,0,30000000,0);
insert into apps values(113,'abc2',1234,333,4.9,0,30000000,0);
update apps set price=200 where appname='BYJUS';
delete from categories where categoryname='music';




