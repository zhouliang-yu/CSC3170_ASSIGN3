SELECT DEPARTMENT_ID, AVG(SALARY), COUNT(*)
FROM employees
group by DEPARTMENT_ID
HAVING COUNT(*) > 10;;
