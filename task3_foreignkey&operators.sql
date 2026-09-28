use playstore;

alter table apps
rename column developersid to developerid;

delete from apps
where developerid not in (select developerid from developers);

alter table apps
add constraint fk_developer
foreign key(developerid)
references developers(developerid);


delete from apps
where publisherid not in (select publisherid from publishers);

alter table apps
add constraint fk_publisherid
foreign key(publisherid)
references publishers(publisherid);

delete from apps
where categoryid not in (select categoryid from categories);

alter table apps
add constraint fk_categoryid
foreign key(categoryid)
references categories(categoryid);

select *
from apps
where rating>4.5;

select *
from apps
where price = 0;

select *
from categories
where categoryid=305;

-- level 1

select* from apps where downloads>500000000;

select *from apps where rating>4.3 and rating<4.7;

select * from apps where price in (0,299);

select *from apps where appname like 'G%';

select * from apps where rating>4.0 and downloads > 500000000;

select *from apps where categoryid = 301 or categoryid=305;

-- level 2

select *from apps where appname not like('G%'); 

select *from apps where rating<4.5 and downloads >1000000000;

select * from developers where developername like('%a%');

select *from apps where price>0 and price<300;

select *from apps where publisherid=201 or publisherid=204;

insert into apps (appid,appname,developerid,publisherid,categoryid,rating,downloads,price) 
values(200,'test app',999,305,42,2.3,500000,80);

select *from apps where categoryid != 305


