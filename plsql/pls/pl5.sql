declare
fact number;
n number;
i number;
begin
fact:=1;
n:=&n;
i:=1;
while i<=n
loop
fact:=fact*i;
i:=i+1;
end loop;
dbms_output.put_line('factorial is :'|| fact);
end; 