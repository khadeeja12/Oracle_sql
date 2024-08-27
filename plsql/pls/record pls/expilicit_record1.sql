declare
cursor empcursor is select empname,deptname,salary from (select empname,deptname,salary from employee e,department d where e.deptno=d.deptno order by salary desc) where rownum<=5;
vemp empcursor%rowtype;
begin
dbms_output.put_line('******employee details******');
open empcursor;
fetch empcursor into vemp;
while empcursor%found
loop
dbms_output.put_line('Empname:'|| vemp.empname);
dbms_output.put_line('Empname:'|| vemp.deptname);
dbms_output.put_line('Salary:'|| vemp.salary);
dbms_output.put_line('*********************************');
fetch empcursor into vemp;
end loop;
close empcursor;
end;

SQL> @ C:\Users\CCL35\Desktop\pls\expilicit_record1.sql;
 50  /
******employee details******
Empname:ARNOLD LEONARD AMON
Empname:COMPUTER SERVICE DIVISION
Salary:152750
*********************************
Empname:DONA ANICE SIBY
Empname:COMPUTER SERVICE DIVISION
Salary:46500
*********************************
Empname:PHILIP VINCENT
Empname:PLANNING
Salary:41250
*********************************
Empname:ALFRIN LUIZ
Empname:SUPPORT SERVICES
Salary:40175
*********************************
Empname:SHILVY K K
Empname:INFORMATION CENTER
Salary:39250
*********************************

PL/SQL procedure successfully completed.