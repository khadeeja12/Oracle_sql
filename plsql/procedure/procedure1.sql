create or replace procedure 
sum1(a in number,b in number) as
s number(5,2);
begin
s:=a+b;
dbms_output.put_line('sum is :'||s);
end;