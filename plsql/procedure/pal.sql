declare

cursor empnames is select upper(empname) from employee;
empname varchar2(30);

begin
    open empnames;
    loop
        fetch empnames into empname;
        exit when empnames%notfound;
        palindron_checker(empname);
    end loop;
    close empnames;
end;