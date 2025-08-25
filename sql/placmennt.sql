show databases;
use sathyabama;
create table cse(
sid int,
sname varchar(30),
smarks int
);
 show tables from sathyabama;
 desc cse;
select * from cse;
INSERT INTO CSE (sid, sname, smarks) VALUES
(1, 'Rahul', 85),
(2, 'Priya', 92),
(3, 'Karthik', 76);
desc cse;
select * from cse;

create table ece(
sid int,
sname varchar(30),
smarks int
);
show tables;
desc ece;
select * from ece;


use sathyabama;
select* from cse;

iNSERT INTO ece(sid, sname, smarks) VALUES
(1, 'vardhan', 95),
(2, 'nandu', 82),
(3, 'Karthik', 71);


select * from ece;


select * from ece;
desc ece;
select * from ece;
alter table cse add(semail varchar(40));
select * from cse;
alter table ece add(sphone int, semail varchar(40));
select * from ece;
use sathyabama;
 update ece set smarks=100 where sid=3;
 select * from ece;
 
 UPDATE ece 
SET smarks = 85, semail = 'vardhan123@gmail.com' 
WHERE sid = 1;
  select * from ece;
  UPDATE ece
SET sid = 2, sname = 'chandra'
WHERE sid = 2;

  
  UPDATE ece 
SET smarks = smarks + 4;
START TRANSACTION;
UPDATE ece SET smarks = 90 WHERE sid = 3;
SAVEPOINT sp1;   
select * from ece;
UPDATE ece SET sname = 'Manoj' WHERE sid = 1;
SAVEPOINT sp2;  
select * from ece;

UPDATE ece SET smarks = smarks + 10;

SAVEPOINT sp3;   

select * from ece;
ROLLBACK TO sp2;
select * from ece;

ROLLBACK;
select * from ece;

commit;




 
 
