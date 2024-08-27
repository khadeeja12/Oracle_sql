create or replace function reverse_employee(epno in char)return
char as
eno employee.empno%type;
reveno varchar2(20);
begin
   select empo,reverse(eno) into eno,reveno from ( select empno from employee where rownum<=5) where empno=eno;
   dbms_output.put_line(eno);
   dbms_output.put_line(reveno);
   return reveno;
end;