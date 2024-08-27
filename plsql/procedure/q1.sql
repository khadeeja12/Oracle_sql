declare
x number(5,2);
y number(5,2);
z number(5,2);
begin
x:=&x;
y:=&y;
sum1(x,y,z);
dbms_output.put_line('sum is:'||z);
end;