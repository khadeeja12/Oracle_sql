create or replace procedure palindron_checker(arg in varchar2)
as
rev varchar2(30);
begin
    select reverse(arg) into rev from dual;
    if arg = rev
    then 
        dbms_output.put_line(arg);
    end if;

end ;