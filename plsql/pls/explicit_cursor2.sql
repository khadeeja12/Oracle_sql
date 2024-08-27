declare
cursor empcursor is select empno,empname,salary from employee;
vempno employee.empno%type;
vempname employee.empname%type;
vsalary employee.salary%type;
begin
dbms_output.put_line('employee details');
open empcursor;
fetch empcursor into vempno,vempname,vsalary;
while empcursor%found
loop
dbms_output.put_line('Empno:'|| vempno);
dbms_output.put_line('Empname:'|| vempname);
dbms_output.put_line('Salary:'|| vsalary);
dbms_output.put_line('*********************************');
fetch empcursor into vempno,vempname,vsalary;
end loop;
close empcursor;
end;
