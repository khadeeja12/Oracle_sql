declare
ano number;
b number(10,5);
begin
ano:=&ano;
select balance into b from accounts where accno=ano;
if b-2000<500 then
dbms_output.put_line('Transaction not possible,insufficient balance');
else
update accounts set balance=balance-2000 where accno=ano;
dbms_output.put_line('Transaction successful');
end if;
end;