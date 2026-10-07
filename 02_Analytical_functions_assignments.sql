-- --------------------    ANALYTICAL FUNCTIONS   --------------------

-- PART 1 – ROW_NUMBER()
----------------------------------------------------------------------
-- Example 1 – Assign Row Number Based on Highest Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS HIGHEST_SALARY FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 2 – Row Number Based on Lowest Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, ROW_NUMBER() OVER(ORDER BY SALARY ASC) AS LOWEST_SALARY FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 3 – Department-Wise Row Number

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, ROW_NUMBER() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS HIGHEST_SALARY FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 4 – Row Number Based on Hire Date

-- SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE, ROW_NUMBER() OVER(ORDER BY HIRE_DATE DESC)AS HIRE_JOINING_DATE FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 5 – Latest Employee in Each Department

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,HIRE_DATE, ROW_NUMBER() OVER(PARTITION BY DEPARTMENT_ID 
--     ORDER BY HIRE_DATE DESC)AS LASTEST_EMPLOYEE FROM HR.EMPLOYEES)WHERE LASTEST_EMPLOYEE=1;

----------------------------------------------------------------------
-- Example 6 – Top 3 Highest Paid Employees in Each Department

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, ROW_NUMBER() OVER(PARTITION BY DEPARTMENT_ID 
--     ORDER BY SALARY DESC)AS HIGHEST_PAID_SALARY FROM HR.EMPLOYEES)WHERE HIGHEST_PAID_SALARY <= 3;

----------------------------------------------------------------------

-- ----------------------       PART 2 – RANK()           --------------------------

----------------------------------------------------------------------
-- Example 7 – Rank Employees Based on Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, RANK() OVER( ORDER BY SALARY DESC) AS RANK_SALARY FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 8 – Rank Employees from Lowest Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, RANK() OVER( ORDER BY SALARY ASC) AS RANK_SALARY_ASC FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 9 – Department-Wise Salary Rank

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DEPT_RANK_SALARY_ASC FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 10 – Rank Employees Based on Hire Date

-- SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE, RANK() OVER(ORDER BY HIRE_DATE DESC) AS RANK_HIRE_DATE FROM HR.EMPLOYEES;

-- SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE, RANK() OVER(ORDER BY HIRE_DATE ASC) AS RANK_HIRE_DATE FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 11 – Highest Paid Employees in Every Department

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, RANK() OVER(PARTITION BY DEPARTMENT_ID 
--     ORDER BY SALARY DESC)AS HIGHEST_RANK_SALARY FROM HR.EMPLOYEES)WHERE HIGHEST_RANK_SALARY = 1;

----------------------------------------------------------------------
-- Example 12 – Top 3 Salary Ranks in Every Department

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, RANK() OVER(PARTITION BY DEPARTMENT_ID 
--     ORDER BY SALARY DESC)AS HIGHEST_RANK_SALARY FROM HR.EMPLOYEES)WHERE HIGHEST_RANK_SALARY <= 3;

----------------------------------------------------------------------

-- ----------------------       PART 3 – DENSE_RANK()           --------------------------

----------------------------------------------------------------------
-- Example 13 – Dense Rank Based on Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, DENSE_RANK() OVER( ORDER BY SALARY DESC) AS D_R_SALARY FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 14 – Dense Rank from Lowest Salary


-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, DENSE_RANK() OVER( ORDER BY SALARY ASC) AS RANK_SALARY_ASC FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 15 – Department-Wise Dense Rank

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID 
-- ORDER BY SALARY DESC) AS DEPT_D_RANK_ASC FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 16 – Find Second Highest Salary

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, DENSE_RANK() OVER( ORDER BY SALARY DESC)AS HIGHEST_D_RANK_SALARY FROM HR.EMPLOYEES)WHERE HIGHEST_D_RANK_SALARY = 2;

----------------------------------------------------------------------
-- Example 17 – Third Highest Salary

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS HIGHEST_D_RANK_SALARY
--  FROM HR.EMPLOYEES)WHERE HIGHEST_D_RANK_SALARY = 3;

----------------------------------------------------------------------
-- Example 18 – Second Highest Salary in Every Department

-- SELECT * FROM (SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID 
--     ORDER BY SALARY DESC)AS HIGHEST_D_RANK_SALARY
--     FROM HR.EMPLOYEES)WHERE HIGHEST_D_RANK_SALARY = 2;

----------------------------------------------------------------------

-- ----------------------       PART 4 – FIRST_VALUE()           --------------------------

----------------------------------------------------------------------
-- Example 19 – Display Highest Salary Against Every Employee

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, FIRST_VALUE(SALARY) OVER(ORDER BY SALARY DESC)
--  AS HIGHEST_SALARY FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 20 – Display Lowest Salary Using FIRST_VALUE

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, FIRST_VALUE(SALARY) OVER(ORDER BY SALARY ASC)
--  AS LOWEST_SALARY FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 21 – Highest Salary in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID, FIRST_VALUE(SALARY) OVER(PARTITION BY
--  DEPARTMENT_ID ORDER BY SALARY DESC) AS HIGHEST_SALARY FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 22 – Name of Highest Paid Employee in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID, FIRST_VALUE(FIRST_NAME) OVER(PARTITION BY
--  DEPARTMENT_ID ORDER BY SALARY DESC) AS HIGHEST_PAID_EMPLOYEE FROM HR.EMPLOYEES

----------------------------------------------------------------------
-- Example 23 – Earliest Joining Date in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE,DEPARTMENT_ID, FIRST_VALUE(HIRE_DATE) OVER(PARTITION BY
--  DEPARTMENT_ID ORDER BY SALARY ASC) AS EARLIEST_HIRE_DATE FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 24 – First Employee Who Joined Each Department


-- SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE,DEPARTMENT_ID, FIRST_VALUE(FIRST_NAME) OVER(PARTITION BY
--  DEPARTMENT_ID ORDER BY SALARY ASC) AS FIRST_JOINED_EMP_NAME FROM HR.EMPLOYEES;

----------------------------------------------------------------------

-- ----------------------       PART 5 – LAST_VALUE()           --------------------------

----------------------------------------------------------------------
-- Example 25 – Display Lowest Salary Against Every Employee


-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, LAST_VALUE(salary) OVER(ORDER BY SALARY DESC
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LOWEST_SALARY_P_NAME FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 26 – Highest Salary Using LAST_VALUE

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY, LAST_VALUE(salary) OVER(ORDER BY SALARY ASC
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LOWEST_SALARY_P_NAME FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 27 – Lowest Salary in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, LAST_VALUE(salary) OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LOWEST_SALARY FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 28 – Lowest Paid Employee Name in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY, LAST_VALUE(FIRST_NAME) OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LOWEST_PAID_FIRST_NAME FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 29 – Latest Hire Date in Each Department

-- SELECT EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,HIRE_DATE, LAST_VALUE(HIRE_DATE) OVER(PARTITION BY DEPARTMENT_ID
--  ORDER BY HIRE_DATE ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LATEST_HIRE_DATE FROM HR.EMPLOYEES;

----------------------------------------------------------------------
-- Example 30 – Compare Employee Salary with Highest and Lowest Department Salary

-- SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,DEPARTMENT_ID, FIRST_VALUE(salary) OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC
--  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS highest_department_salary,
--  LAST_VALUE(salary) OVER (PARTITION BY department_id ORDER BY salary DESC ROWS BETWEEN UNBOUNDED PRECEDING 
--  AND UNBOUNDED FOLLOWING) AS lowest_department_salary FROM HR.EMPLOYEES ORDER BY DEPARTMENT_ID,SALARY;





