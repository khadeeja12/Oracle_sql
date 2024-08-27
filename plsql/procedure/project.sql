create or replace procedure Proj_emp(ename in varchar2)
as
cursor p is select projname from emp_proj ep inner join employee e on e.empno =ep.empno inner join project p on ep.projno=p.projno where empname=ename;

project_name varchar2(30);

begin
	open p;
	
	loop
	fetch p into project_name;
	exit when p%notfound;
	
	DBMS_OUTPUT.PUT_LINE(PROJECT_NAME); 
	
	end loop;
	close p;

end;