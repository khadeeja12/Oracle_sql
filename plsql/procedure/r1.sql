/* inout*/

declare
x number(5,2);
y number(5,2);
begin
x:=&x;
y:=&y;
sum1(x,y);
dbms_output.put_line('sum is:'||y);                                                                                          
end;