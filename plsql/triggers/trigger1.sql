create or replace trigger trig1 before delete on emp_tab 
for each row
begin
if deleting then
insert into emp_x values(:old.eno,:old.ename,:old.esal,:old.job,sysdate);
end if;
end;







SQL> create table emp_tab(eno  varchar2(5),ename varchar2(20),esal number(10,2),job varchar2(20));

Table created.

SQL> create table emp_new(eno  varchar2(5),ename varchar2(20),esal number(10,2),job varchar2(20));

Table created.

SQL> create table emp_x(eno  varchar2(5),ename varchar2(20),esal number(10,2),job varchar2(20));

Table created.

SQL> create table emp_modified(eno  varchar2(5),ename varchar2(20),esal number(10,2),job varchar2(20));

Table created.

SQL> select * from emp_tab;

ENO   ENAME                      ESAL JOB
----- -------------------- ---------- --------------------
T101  khadeeja                  50000 developer
T102  Leo                       40000 designer
T103  Manu                      60000 analyst
T104  Kavya                     30000 teacher
T105  Kwizera                   80000 director

SQL> alter table emp_x add x_date date;

Table altered.

SQL> desc emp_x;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                                VARCHAR2(5)
 ENAME                                              VARCHAR2(20)
 ESAL                                               NUMBER(10,2)
 JOB                                                VARCHAR2(20)
 X_DATE                                             DATE

SQL> @ C:\Users\CCL35\Desktop\khadeeja\plsql\trigger1.sql
  8  /

Trigger created.

SQL> delete from emp_tab;

5 rows deleted.

SQL> select * from emp_x;

ENO   ENAME                      ESAL JOB                  X_DATE
----- -------------------- ---------- -------------------- ---------
T101  khadeeja                  50000 developer            09-OCT-23
T102  Leo                       40000 designer             09-OCT-23
T103  Manu                      60000 analyst              09-OCT-23
T104  Kavya                     30000 teacher              09-OCT-23
T105  Kwizera                   80000 director             09-OCT-23