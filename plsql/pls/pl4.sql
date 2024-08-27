declare
 num1 number;

begin
num1:=&num1;

if mod(num1,2)=0 then
   dbms_output.put_line(' it is even number');
else
    dbms_output.put_line(' it is odd number');
end if;
end;