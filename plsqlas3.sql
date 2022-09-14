/*
create table Borrower(Roll_no integer, Name varchar(25), Date_of_issue date, Name_of_book varchar(25), Status varchar(20));
create table Fine(Roll_no integer, sys_date date, Amount integer);

insert into Borrower values (23, 'Zack', '8-28-2022', 'DBMS', 'Issued');
insert into Borrower values (32, 'Red', '9-01-2022', 'TOC', 'Issued');
insert into Borrower values (44, 'Ash', '9-04-2022', 'CNS', 'Issued');
insert into Borrower values (61, 'Flash', '9-11-2022', 'SPM', 'Issued');
*/
select * from Borrower;
select * from Fine;

declare
rollnum number;
name1 varchar(20);
amt int;
doissue date;
system_date date;
no_of_days number(20);

begin
rollnum:=:Roll_no;
name1:=:name1;
select Sysdate into system_date from dual;
select Date_of_issue into doissue from Borrower where Roll_no=rollnum and Name_of_book=name1;
dbms_output.put_line(doissue);
no_of_days:=system_date - doissue;
dbms_output.put_line(no_of_days);

if no_of_days>15 and no_of_days<30 then
amt:=no_of_days*5;
dbms_output.put_line('Amount'||amt);

elseif no_of_days>30 then
amt=no_of_days*50;
dbms_output.put_line('Amount'||amt);

else
dbms_output.put_line('No Fine');
end if;
if no_of_days>15 then
insert into Fine values(rollnum,sysdate,amt);
update borrower set status='r' where roll_no=rollnum;
end if;


exception
when no_data_found then
dbms_output.put_line(rollnum||'Not found');
end;
