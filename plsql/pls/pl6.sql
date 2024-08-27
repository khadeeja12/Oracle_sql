declare
fact number;
n number;
i number;
begin
fact:=1;
n:=&n;
i:=1;
loop
fact:=fact*i;
i:=i+1;
exit when i<=n;
end loop;
dbms_output.put_line('factorial is :'|| fact);
end; 