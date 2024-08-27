create or replace procedure 
sum1(a in number,b in out number) as
begin
b:=a+b;
end;