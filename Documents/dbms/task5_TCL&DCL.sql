use playstore;

set autocommit = 0;

update apps set rating=5 where appname='googlekeep';
select * from apps;
commit;
update apps set price=60000 where appname='spotify';
rollback;

insert into apps(appname,appid)
values('claude',3001);
commit;

insert into developers(developername,developerid)
values('newmam',2001);
rollback;

update apps set rating=4 where appid='1001';
savepoint s1;

-- level 2
update apps set rating=1 where appname='googlekeep';
savepoint s2;
update apps set rating=2 where appname='googleclassroom';

update apps set appid=20001 where appname='spotify';
rollback to savepoint s2;

insert into apps(appname,appid,price)
values('deepseek',1999,30000);
savepoint s3;
update apps set price=40000 where appid=1999;
rollback;

CREATE USER 'student1'@'%'
IDENTIFIED BY 'password123';

show grants for 'student1'@'%';

GRANT SELECT
ON playstore.apps
TO 'student1'@'%';

CREATE USER 'vasii'@'10.190.245.93'
 IDENTIFIED BY 'Vasi@143';

 GRANT SELECT
 ON playstore.apps
 TO 'vasii'@'10.190.245.93';

show grants for 'vasii'@'10.190.245.93';

 

 GRANT SELECT,insert
 ON playstore.apps
 TO 'vasii'@'10.190.245.93';

 show grants for 'vasii'@'10.190.245.93';

 revoke insert 
 on apps from vasii;
-- level 2


START TRANSACTION;

UPDATE apps
SET price = 100
WHERE appid = 1001;
UPDATE apps
SET price = 200
WHERE appid = 1002;
SAVEPOINT sp1;
UPDATE apps
SET price = 300
WHERE appid = 1003;
UPDATE Apps
SET Price = 400
WHERE appid = 1004;
ROLLBACK TO SAVEPOINT sp1;
COMMIT;

START TRANSACTION;
SAVEPOINT sp4;
INSERT INTO Categories (CategoryID, CategoryName)
VALUES (101, 'Education');
INSERT INTO Categories (CategoryID, CategoryName)
VALUES (102, 'Finance');
ROLLBACK TO SAVEPOINT sp4;
COMMIT;

GRANT SELECT, INSERT, UPDATE ON playstore.apps TO 'student1'@'%';

REVOKE UPDATE ON playstore.apps FROM 'student1'@'%';

GRANT SELECT ON playstore.developers TO 'student1'@'%';

START TRANSACTION;

UPDATE apps SET price = 9999 WHERE appid= 1001;

SELECT apid, price FROM apps WHERE appid = 1001;
ROLLBACK;

SELECT appid, price
FROM apps
WHERE appid = 1001;

select * from apps;
