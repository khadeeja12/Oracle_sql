create or replace procedure 
emp(a in varchar2) as
ename employee.empname%type;
depno employee.deptno%type;
begin
select empname,deptno into ename,depno from employee where empno=a;
dbms_output.put_line('name:'||ename);
dbms_output.put_line('deptno:'||depno);
end;