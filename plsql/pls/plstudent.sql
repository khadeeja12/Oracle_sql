declare
totalmark number;
mark1 number;
mark2 number;
mark3 number;
sid number;
begin
sid:=&sid;
select session1,session2,session3 into mark1,mark2,mark3 from stud where id=sid;
totalmark:=mark1+mark2+mark3;
if (totalmark>=45) and (totalmark<=50) then
dbms_output.put_line('Student is passed');
update stud set session1=mark1+5 where id=sid;
else
dbms_output.put_line('Not passed');
end if;
end;