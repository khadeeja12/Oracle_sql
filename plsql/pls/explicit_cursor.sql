declare
cursor empcursor is select empno,empname,salary from employee;
vemp empcursor%rowtype;
begin
dbms_output.put_line('employee details');
open empcursor;
fetch empcursor into vemp;
while empcursor%found
loop
dbms_output.put_line('Empno:'|| vemp.empno);
dbms_output.put_line('Empname:'|| vemp.empname);
dbms_output.put_line('Salary:'|| vemp.salary);
dbms_output.put_line('*********************************');
fetch empcursor into vemp;
end loop;
close empcursor;
end;

