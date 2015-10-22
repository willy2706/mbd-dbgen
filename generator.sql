aktor : 1.000 record 
genre : 20 record (uda ada)
penonton : 10.000 record
sutradara : 1.000 record
film : 10.000 record


aktorfilm : 100.000 (ini tolong bikin dong ada 1 aktor yang perannya bisa banyak film, misalnya ada 750 film)
genrefilm : 2.000
penontonfilm : 1.000.000

delimiter //
create procedure populate (in num int)
begin
declare i int default 0;
declare j int; 
declare k int; 
while i < num do
set j = 1 + floor(rand()*10000);
set k = 1 + floor(rand()*10000);
IF NOT EXISTS(SELECT 'True' FROM penontonfilm Where penontonid = j and filmid = k) THEN
IF EXISTS (SELECT 'True' FROM penonton WHERE penontonid = j) THEN
	IF EXISTS (SELECT 'True' FROM film WHERE filmid = k) THEN
		insert into penontonfilm (penontonid, filmid) values (j,k);
end if;
end if;
end if;

set i = i + 1;
end while;
end //
delimiter ;pop


delimiter //
create procedure populate (in num int)
begin
declare i int default 0;
declare j int; 
declare k int; 
while i < num do
set j = 1 + floor(rand()*10000);
set k = 1 + floor(rand()*10000);
IF NOT EXISTS(SELECT 'True' FROM aktorfilm Where aktorid = j and filmid = k) THEN
IF EXISTS (SELECT 'True' FROM aktor WHERE aktor = j) THEN
	IF EXISTS (SELECT 'True' FROM film WHERE filmid = k) THEN
		insert into aktorfilm (aktorid, filmid) values (j,k);
end if;
end if;
end if;

set i = i + 1;
end while;
end //
delimiter ;pop

ELT(0.5 + RAND() * 6, 'AIM', 'ICQ', 'MSN', 'Yahoo', 'GTalk', 'Other')

select from_unixtime(
    unix_timestamp('2000-1-1') + floor(
        rand() * (
            unix_timestamp('2012-12-31') - unix_timestamp('2000-1-1') + 1
        )
    )
)
