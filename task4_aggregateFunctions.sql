use playstore;
-- task 1
select * from apps;
select count(*) from apps;
select avg(rating) from apps;
select max(rating) from apps;
select min(rating) from apps;
select count(downloads) from apps;
select * from apps order by rating desc;

-- task2 

select categoryid, count(*) from apps group by categoryid ;
select categoryid ,avg(rating) from apps group by categoryid;
select max(price),min(price) from apps ;
select appname,downloads from apps order by downloads desc;
select categoryid,count(categoryid) from apps group by categoryid;
select categoryid,count(categoryid) from apps group by categoryid having count(*)>0;

-- task3

select developerid,sum(downloads) from apps group by developerid;
select publisherid,avg(rating) from apps group by publisherid;
select developername from developers where developerid in (select developerid from apps group by developerid having count(*)>0);
select distinct categoryid from apps a where (select avg(a.rating)from apps a2 where a2.categoryid=a.categoryid)>4.3;
select categoryid,count(*) from apps group by categoryid order by count(*) desc;
select * from apps where rating =(select max(rating) from apps );
select developerid,sum(price) from apps group by developerid;



