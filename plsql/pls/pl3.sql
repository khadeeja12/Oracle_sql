declare
 num1 number;
num2 number;
s number;
begin
num1:=&num1;
num2:=&num2;
s:=num1+num2;
dbms_output.put_line('sum is : '|| s);
end;