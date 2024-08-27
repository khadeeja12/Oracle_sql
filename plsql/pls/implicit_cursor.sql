declare

begin
update employee set salary=&salary where empno=&empno;
if sql%found then
   dbms_output.put_line(sql%rowcount || 'records are updated in the employee table');
end if;
end;