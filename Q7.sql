SELECT EMPLOYEE_ID, PHONE_NUMBER FROM employees
WHERE DEPARTMENT_ID = 100 OR DEPARTMENT_ID = 20 GROUP BY EMPLOYEE_ID;