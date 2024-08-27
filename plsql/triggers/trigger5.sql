create or replace trigger mytrig1 before delete or insert or update on emp_tab
begin
if (to_char(sysdate,'day') in ('sun','mon')) or (to_char(sysdate,'hh:mi') not between '08.30' and '18.30') then
raise_application_error(-20500,'table is secured');
end if;
end;
