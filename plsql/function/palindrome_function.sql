create or replace function palindrome_f(arg in varchar2) return 
varchar2 as
 str employee.empname%type;
rev employee.empname%type;

begin
     select upper(arg),reverse(upper(arg)) into str,rev from dual;
     if rev = str
     then
           return 'palindrome';
     else
           return 'not palindrome';
     end if;
end;











output


SQL> select palindrome_f('malayalam') from dual;

PALINDROME_F('MALAYALAM')
--------------------------------------------------------------------------------
palindrome

SQL> select empname,palindrome_f('empname') from employee;

EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
ARNOLD LEONARD AMON
not palindrome

PHILIP VINCENT
not palindrome

SHILVY K K
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
ALFRIN LUIZ
not palindrome

OSHINA ANTONY
not palindrome

BINCY PAUL
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
ANAMIKA PAUL
not palindrome

ANEESH DENNY
not palindrome

DONA ANICE SIBY
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
JUNAID K V
not palindrome

CHRISTEENA THOMAS
not palindrome

JEFFIN DOMINIC
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
JEWEL BIJOY
not palindrome

MELLOW REEBA THOMAS
not palindrome

JOHN VARGHESE
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
ASHREENA HASSAN
not palindrome

VISHAK VIJAYAKUMAR
not palindrome

MERLIN M.D
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
MARIA JOHN
not palindrome

VISHALAKSHI V PRABHU
not palindrome

ANGEL PAUL
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
RIYA TONEY
not palindrome

PRIYA TOMY
not palindrome

ARYAMOL ASOKAN
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
GEO GEORGE
not palindrome

JIMMY THOMSON
not palindrome

ALAN PAYYAPPILLY
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
BEN PETER MATHEW
not palindrome

KRISHNANUNNI S
not palindrome

AHALYA V A
not palindrome


EMPNAME
------------------------------
PALINDROME_F('EMPNAME')
--------------------------------------------------------------------------------
ANJALI NAIR
not palindrome


31 rows selected.
