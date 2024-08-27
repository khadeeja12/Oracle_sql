CREATE OR REPLACE FUNCTION check_employee(emp_no IN VARCHAR2) RETURN VARCHAR2 IS
   is_employee_exists NUMBER;
   is_manager NUMBER;
   dept_name VARCHAR2(100);
BEGIN
   -- Check if the employee exists
   SELECT COUNT(*) INTO is_employee_exists FROM employee WHERE empno = emp_no;

   IF is_employee_exists = 0 THEN
      RETURN 'Employee not found.';
   ELSE
      -- Check if the employee is a manager of any department
      SELECT COUNT(*) INTO is_manager FROM department WHERE manager_id = emp_no;

      IF is_manager > 0 THEN
         -- Get the department name where the employee is a manager
         SELECT department_name INTO dept_name FROM department WHERE manager_id = emp_no;
         RETURN 'Employee is a manager of department: ' || dept_name;
      ELSE
         RETURN 'Employee exists but is not a manager.';
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN 'Error: No data found.';
END;
/
