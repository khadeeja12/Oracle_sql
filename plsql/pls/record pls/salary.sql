declare
total number;
begin
savepoint s1;
update salary set sal=sal+2000 where id =102;
update salary set sal=sal+2500 where id =103;
select sum(sal) into total from salary;
dbms_output.put_line('total : '|| total);
if total>75000 then
	rollback to s1;
else 
  	commit;
end if;
end;