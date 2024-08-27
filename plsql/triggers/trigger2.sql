create or replace trigger trig1 before  delete or insert or update on emp_tab 
for each row
begin
if deleting then
insert into emp_x values(:old.eno,:old.ename,:old.esal,:old.job,sysdate);
elsif inserting then
insert into emp_new values(:new.eno,:new.ename,:new.esal,:new.job);
elsif updating then
insert into emp_modified values(:old.eno,:old.ename,:old.esal,:old.job);
end if;
end;



/*

SQL> @ C:\Users\CCL35\Desktop\khadeeja\plsql\triggers\trigger2.sql
 12  /

Trigger created.

SQL> insert into emp_tab values('T106','majo',50000,'clerk');

1 row created.

SQL> insert into emp_tab values('T107','nintu',90000,'designer');

1 row created.

SQL> select * from emp_tab;

ENO   ENAME                      ESAL JOB
----- -------------------- ---------- --------------------
T106  majo                      50000 clerk
T107  nintu                     90000 designer

SQL> select * from emp_new;

ENO   ENAME                      ESAL JOB
----- -------------------- ---------- --------------------
T106  majo                      50000 clerk
T107  nintu                     90000 designer




SQL> update emp_tab set ename='nivya' where eno='T107';

1 row updated.

SQL> select * from emp_modified;

ENO   ENAME                      ESAL JOB
----- -------------------- ---------- --------------------
T107  nintu                     90000 designer

*/