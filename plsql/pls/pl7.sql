declare
fact number;
n number;
begin
fact:=1;
n:=&n;
for i in 1..n
loop
fact:=fact*i;
end loop;
dbms_output.put_line('factorial is :'|| fact);
end; 