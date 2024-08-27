declare
num number;
rev number;
rem number;
begin
rev:=0;
num:=&num;
while num!=0
loop
rem:=mod(num,10);
rev:=rev*10+rem;
num:=trunc(num/10);
end loop;
dbms_output.put_line('Inverse is :'||rev);
end;
