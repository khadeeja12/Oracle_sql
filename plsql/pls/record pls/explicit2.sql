declare
v_raise_amt number;
v_raisedate date:=sysdate;
cursor empcursor is select * from employee where job='analyst';
vemp empcursor%rowtype;
begin
open empcursor;
fetch empcursor into vemp;
while empcursor%found
loop
update employee set salary=salary+salary*0.15 where empno=vemp.empno;
if sql%rowcount >0 then
insert into emp_raise(empcode,raisedate,raise_amt) values(vemp.empno,v_raisedate,vemp.salary*0.15);
end if;
fetch empcursor into vemp;
end loop;
close empcursor;
dbms_output.put_line('salary updated and records inserted in the new table successfully');
end;