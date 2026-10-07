-----------------------------------------------------------------------------

---------------------        Window Frame        ---------------------

-----------------------------------------------------------------------------
-- 1. Running Total – First Row to Current Row

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, SUM(SALARY) OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS SUM_VALUE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 2. Department-Wise Running Total

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID, SUM(SALARY) OVER(PARTITION BY DEPARTMENT_ID ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS DEPT_RUNNING_TOTAL FROM HR.EMPLOYEES ORDER BY DEPARTMENT_ID, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 3. Running Average Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, AVG(SALARY) OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNNING_AVG_VALUE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 4. Maximum Salary Seen So Far

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, MAX(SALARY)OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS MAX_SALARY_VALUE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 5. Minimum Salary Seen So Far

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, MIN(SALARY)OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS MIN_SALARY_VALUE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 6. Running Employee Count

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, count(*) OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_EMPLOYEE_COUNT FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 7. Complete Company Salary Total

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, SUM(SALARY) OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS TOTAL_COMPANY_SALARY FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 8. Complete Department Salary Total

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID, SUM(SALARY) OVER(PARTITION BY DEPARTMENT_ID ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS TOTAL_DEPARTMENT_SALARY
--   FROM HR.EMPLOYEES ORDER BY DEPARTMENT_ID, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 9. Complete Department Average Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID, AVG(SALARY) OVER(PARTITION BY DEPARTMENT_ID ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS DEPARTMENT_AVG_SALARY
--   FROM HR.EMPLOYEES ORDER BY DEPARTMENT_ID, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 10. Reverse Running Total

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, SUM(SALARY) OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS SUM_VALUE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 11. Reverse Running Average

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, AVG(SALARY) OVER(ORDER BY EMPLOYEE_ID
--  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS AVG_VALUE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 12. Previous Row + Current Row

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
-- ) AS PREVIOUS_CURRENT_TOTAL FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 13. Previous Two Rows + Current Row

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
-- ) AS PREVIOUS_CURRENT_TOTAL FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 14. Previous Three Rows + Current Row Average

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,AVG(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
-- ) AS FOUR_ROW_MOVING_AVERAGE FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 15. Previous + Current + Next Row

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
-- ) AS three_row_moving_total FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 16. Three-Row Moving Average

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,AVG(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
-- ) AS three_row_moving_average FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 17. Two Previous + Current + Two Following

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
-- ) AS five_row_moving_total FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 18. Five-Row Moving Average

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,AVG(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
-- ) AS five_row_moving_avg FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 19. Current Row + Next Row

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING
-- ) AS current_next_total FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 20. Current Row + Next Two Rows

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
-- ) AS current_next_two_total FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 21. Current Row + Next Three Rows Average

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,SUM(SALARY) OVER(ORDER BY  EMPLOYEE_ID ROWS BETWEEN CURRENT ROW AND 3 FOLLOWING
-- ) AS forward_moving_average FROM HR.EMPLOYEES ORDER BY EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 22. Department-Wise Moving Average

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID,AVG(SALARY) OVER(PARTITION BY DEPARTMENT_ID
--  ORDER BY EMPLOYEE_ID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS department_moving_average FROM HR.EMPLOYEES
--   ORDER BY DEPARTMENT_ID, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 23. Department Running Salary Based on Hire Date

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID,HIRE_DATE,SUM(SALARY) OVER(PARTITION BY DEPARTMENT_ID
--  ORDER BY HIRE_DATE, EMPLOYEE_ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS salary_running_total FROM HR.EMPLOYEES
--   ORDER BY DEPARTMENT_ID,HIRE_DATE, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 24. Highest Salary Seen So Far Based on Hire Date

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID,HIRE_DATE,MAX(SALARY) OVER(
--  ORDER BY HIRE_DATE, EMPLOYEE_ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS highest_salary_so_far FROM HR.EMPLOYEES
--   ORDER BY HIRE_DATE, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 25. FIRST_VALUE – Highest Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,FIRST_VALUE(SALARY) OVER(
--  ORDER BY SALARY DESC, EMPLOYEE_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS highest_salary FROM HR.EMPLOYEES
--   ORDER BY SALARY DESC, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 26. LAST_VALUE – Lowest Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,LAST_VALUE(SALARY) OVER(
--  ORDER BY SALARY DESC, EMPLOYEE_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Lowest_salary FROM HR.EMPLOYEES
--   ORDER BY SALARY DESC, EMPLOYEE_ID;

-----------------------------------------------------------------------------
-- 27. Highest and Lowest Salary in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID,FIRST_VALUE(SALARY) OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC, EMPLOYEE_ID 
-- ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS highest_dept_salary, LAST_VALUE(SALARY)
--  OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC, EMPLOYEE_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Lowest_salary
--   FROM HR.EMPLOYEES ORDER BY SALARY DESC,DEPARTMENT_ID, EMPLOYEE_ID;

-----------------------------------------------------------------------------

-- Oracle SQL – Complete Subqueries, Inline Queries and Correlated Subqueries Notes --

-----------------------------------------------------------------------------
-- TYPES OF SUBQUERIES
-- SUBQUERIES
-- │
-- ├── Single-Row Subquery
-- │
-- ├── Multi-Row Subquery
-- │
-- ├── Scalar Subquery
-- │
-- ├── Nested Subquery
-- │
-- ├── Inline View
-- │
-- ├── Correlated Subquery
-- │
-- ├── EXISTS Subquery
-- │
-- ├── NOT EXISTS Subquery
-- │
-- └── CTE / WITH Clause

-----------------------------------------------------------------------------
--------------------- PART 1 – SINGLE-ROW SUBQUERIES ---------------------
-----------------------------------------------------------------------------

-- Example 1 – Employees Earning Above Average Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM HR.EMPLOYEES 
-- WHERE SALARY > (SELECT AVG(SALARY) FROM HR.EMPLOYEES)

-----------------------------------------------------------------------------
-- Example 2 – Employees Earning Below Average Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM HR.EMPLOYEES 
-- WHERE SALARY < (SELECT AVG(SALARY) FROM HR.EMPLOYEES)

-----------------------------------------------------------------------------
-- Example 3 – Employee with Maximum Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM HR.EMPLOYEES 
-- WHERE SALARY = (SELECT MAX(SALARY) FROM HR.EMPLOYEES)

-----------------------------------------------------------------------------
-- Example 4 – Employee with Minimum Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM HR.EMPLOYEES 
-- WHERE SALARY = (SELECT MIN(SALARY) FROM HR.EMPLOYEES)

-----------------------------------------------------------------------------
-- Example 5 – Employees Earning More Than Employee 103

-- SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM HR.EMPLOYEES 
-- WHERE SALARY > (SELECT SALARY FROM HR.EMPLOYEES WHERE EMPLOYEE_ID =103)

-----------------------------------------------------------------------------
-- Example 6 – Employees Hired After Employee 101

-- SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE FROM HR.EMPLOYEES WHERE HIRE_DATE > 
-- (SELECT HIRE_DATE FROM HR.EMPLOYEES WHERE EMPLOYEE_ID = 101)ORDER BY hire_date;

-----------------------------------------------------------------------------
-- Example 7 – Employees in the Same Department as Employee 103

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID FROM HR.EMPLOYEES 
-- WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM HR.EMPLOYEES WHERE EMPLOYEE_ID =103) AND EMPLOYEE_ID<>103;

-----------------------------------------------------------------------------
-- Example 8 – Employees with Salary Equal to Company Average

-- select department_id, first_name,salary from hr.employees where salary = (select avg(salary) from hr.EMPLOYEES);

-----------------------------------------------------------------------------
--------------------- PART 2 – MULTI-ROW SUBQUERIES  ---------------------
-----------------------------------------------------------------------------
-- Example 9 – Employees Working in Sales Departments

-- SELECT employee_id,first_name,department_id FROM hr.employees WHERE department_id IN (SELECT department_id 
-- FROM hr.departments WHERE department_name LIKE '%Sales%');

-----------------------------------------------------------------------------
-- Example 10 – Employees in Departments Located at Location 1700

-- SELECT employee_id,first_name,department_id FROM hr.employees WHERE department_id IN (SELECT department_id 
-- FROM hr.departments WHERE location_id=1700);

-----------------------------------------------------------------------------
-- Example 11 – Employees Not Working in Location 1700 Departments

-- SELECT employee_id,first_name,department_id FROM hr.employees WHERE department_id NOT IN (SELECT department_id 
-- FROM hr.departments WHERE location_id=1700);

-----------------------------------------------------------------------------
--------------------- PART 3 – ANY OPERATOR ---------------------
-----------------------------------------------------------------------------
-- Example 12 – Salary Greater Than ANY Employee in Department 50

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY > ANY (SELECT SALARY
--  FROM HR.EMPLOYEES WHERE DEPARTMENT_ID = 50)ORDER BY SALARY;

-----------------------------------------------------------------------------
-- Example 13 – Salary Less Than ANY Department 50 Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY < ANY (SELECT SALARY
--  FROM HR.EMPLOYEES WHERE DEPARTMENT_ID = 50);

-----------------------------------------------------------------------------
--------------------- PART 4 – ALL OPERATOR ---------------------
-----------------------------------------------------------------------------
-- Example 14 – Salary Greater Than ALL Department 50 Employees

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY > ALL (SELECT SALARY
--  FROM HR.EMPLOYEES WHERE DEPARTMENT_ID = 50)ORDER BY SALARY DESC;

-----------------------------------------------------------------------------
-- Example 15 – Salary Less Than ALL Department 50 Salaries

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY < ALL (SELECT SALARY
--  FROM HR.EMPLOYEES WHERE DEPARTMENT_ID = 50);

-----------------------------------------------------------------------------
--------------------- PART 5 – SCALAR SUBQUERIES ---------------------
-----------------------------------------------------------------------------
-- Example 16 – Display Company Average Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, (SELECT AVG(SALARY)FROM HR.EMPLOYEES) AS AVG_SALARY FROM HR.Employees;

-----------------------------------------------------------------------------
-- Example 17 – Compare Employee Salary with Company Average

-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Company-wide average salary.
--     (
--         SELECT AVG(salary)
--         FROM hr.employees
--     ) AS company_average,

--     -- Calculate difference between employee salary
--     -- and company average.
--     salary -
--     (
--         SELECT AVG(salary)
--         FROM hr.employees
--     ) AS difference_from_average

-- FROM hr.employees;

-----------------------------------------------------------------------------
-- Example 18 – Display Maximum Salary for Every Employee

-- SELECT employee_id, first_name,salary,( SELECT MAX(salary) FROM hr.employees) AS company_max_salary FROM hr.employees;

-----------------------------------------------------------------------------
--------------------- PART 6 – SUBQUERY IN HAVING ---------------------
-----------------------------------------------------------------------------
-- Example 19 – Departments Whose Average Salary Is Above Company Average

-- SELECT department_id,AVG(salary) AS department_average
-- FROM hr.employees GROUP BY department_id HAVING AVG(salary) > (SELECT AVG(salary)FROM hr.employees);

-----------------------------------------------------------------------------
-- Example 20 – Departments with More Employees Than Department 90

-- SELECT DEPARTMENT_ID,COUNT(*)AS EMPLOYEE_COUNT FROM HR.EMPLOYEES WHERE DEPARTMENT_ID IS NOT NULL GROUP BY DEPARTMENT_ID
-- HAVING COUNT(*)>(SELECT COUNT(*) FROM HR.EMPLOYEES WHERE DEPARTMENT_ID = 90) ORDER BY EMPLOYEE_COUNT DESC;

-----------------------------------------------------------------------------
---------------- PART 7 – INLINE VIEWS / INLINE QUERIES -----------------
-----------------------------------------------------------------------------
-- Example 21 – Filter Department Average Using Inline View

-- SELECT department_id, avg_salary FROM(
--     -- Inner query creates a temporary result.
--     SELECT
--         department_id,
--         AVG(salary) AS avg_salary
--     FROM hr.employees
--     WHERE department_id IS NOT NULL
--     GROUP BY department_id
-- )
-- WHERE avg_salary > 8000
-- ORDER BY avg_salary DESC;

-----------------------------------------------------------------------------
-- Example 22 – Top 5 Highest Paid Employees

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM (SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM HR.EMPLOYEES ORDER BY SALARY DESC)
-- WHERE ROWNUM <=5;

-----------------------------------------------------------------------------
-- Example 23 – Top 3 Employees Per Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY FROM (SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY,
-- ROW_NUMBER() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC)AS RN FROM HR.EMPLOYEES)WHERE RN<=3 
-- ORDER BY DEPARTMENT_ID,SALARY DESC;

-----------------------------------------------------------------------------
-- Example 24 – Second Highest Salary Using Inline View

-- SELECT employee_id,first_name,salary
-- FROM(SELECT employee_id,first_name,salary,DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank FROM hr.employees)
-- WHERE salary_rank = 2;

-----------------------------------------------------------------------------
-- Example 25 – Third Highest Salary

-- SELECT employee_id,first_name,salary
-- FROM(SELECT employee_id,first_name,salary,DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank FROM hr.employees)
-- WHERE salary_rank = 3;

-----------------------------------------------------------------------------
---------------- PART 8 – CORRELATED SUBQUERIES ---------------------
-----------------------------------------------------------------------------
-- Example 26 – Employees Earning Above Their Department Average

SELECT employee_id,first_name,department_id,salary
FROM hr.employees e
WHERE salary >(SELECT AVG(e2.salary)FROM hr.employees e2 WHERE e2.department_id = e.department_id
)ORDER BY department_id, salary DESC;

-----------------------------------------------------------------------------
-- Example 27 – Employees Earning Below Their Department Average

-- SELECT employee_id,first_name,department_id,salary
-- FROM hr.employees e
-- WHERE salary <(SELECT AVG(e2.salary)FROM hr.employees e2 WHERE e2.department_id = e.department_id
-- )ORDER BY department_id, salary DESC;

-----------------------------------------------------------------------------
-- Example 28 – Highest Paid Employee in Each Department

-- SELECT employee_id,first_name,department_id,salary
-- FROM hr.employees e
-- WHERE salary = (SELECT MAX(e2.salary)FROM hr.employees e2 WHERE e2.department_id = e.department_id
-- )ORDER BY department_id;

-----------------------------------------------------------------------------
-- Example 29 – Lowest Paid Employee in Each Department

-- SELECT employee_id,first_name,department_id,salary
-- FROM hr.employees e
-- WHERE salary = (SELECT MIN(e2.salary)FROM hr.employees e2 WHERE e2.department_id = e.department_id
-- )ORDER BY department_id;