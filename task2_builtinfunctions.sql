use playstore;
--level 0
select upper(developername) from developers;
select lower(developername) from developers;
select length(appname) from apps;
select categoryname,length(categoryname) from categories;
select current_date(),current_time();
select round(rating,0) from apps;

-- level 1

select appname,substring(appname,1,5) from apps;
select concat(developername,',',country) from developers;
select round(rating,0) from apps;
select ceil(price) from apps;
select concat(developername,'-',foundedyear) from developers;
select convert(downloads,char) from apps;
-- -- level 2
select upper(appname),rating from apps;
select substring(categoryname,1,3) from categories;
select abs(price - 200) from apps;
select developername,length(developername) from developers;
select current_date(),current_timestamp() ;
select cast(downloads as char) from apps;

