declare
i number;
a number(10,2);
begin
for i in 3..7
loop
a:=3.14*i*i;
insert into Areas values(i,a);
end loop;
dbms_output.put_line('Area is :'||a);
end;