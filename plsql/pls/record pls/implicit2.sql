declare
begin
update employee set salary=salary+(salary*0.15) where job='analyst';
if sql%found then
dbms_output.put_line(sql%rowcount ||'record is updated');
end if;
end;