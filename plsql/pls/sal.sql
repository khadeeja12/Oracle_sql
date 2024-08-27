DECLARE

tot number;
eid1 number;
eid2 number;
BEGIN
savepoint s1;
update salary set sal = sal + 2000 where id = 2;

update salary set sal = sal + 2500 where id = 3;

select sum(sal) into tot from salary;
dbms_output.put_line('total : '|| tot);
if tot>=75000 then
	rollback to s1;
else 
  	commit;
end if;
END;

/