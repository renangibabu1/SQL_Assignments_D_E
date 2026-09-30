-- select * from hr.EMPLOYEES
-- o/P
-- select count(*) from hr.EMPLOYEES
-- O/P => Count(107)
-- select * from dual

-- select count(*) from dual
-- output => count 1
-- select FIRST_NAME from hr.employees

-- select UPPER('data') from dual
-- output = DATA

-- select upper('Oracle Data') from dual
-- ##output : ORACLE DATA

-- select upper('Oracle SQL') from dual
-- ## Output : ORACLE SQL

-- select upper('Hello World') from dual
-- ## Output : HELLO WORLD

-- ##1. Example using the hr.employees table

-- select first_name,UPPER(first_name) from hr.employees
-- Example output:

--     FIRST_NAME      UPPER(FIRST_NAME)
--     --------------- -----------------
--     Steven          STEVEN
--     Neena           NEENA
--     Lex             LEX
--     Alexander       ALEXANDER

-- ##2. Example with last_name
-- select last_name,upper(last_name)from hr.employees
-- Example output:

--     LAST_NAME      UPPER(LAST_NAME)
--     --------------- -----------------
--     Abel           ABEL
--     Ande           ANDE
--     Atkinson       ATKINSON
--     Baida          BAIDA

--##3. Example in WHERE condition
-- select * from hr.EMPLOYEES
-- select employee_id,first_name,last_name from hr.EMPLOYEES WHERE UPPER(FIRST_NAME)='STEVEN'

--Example output
--     Employee id    First Name       LAST_NAME
--     -----------    ----------       --------------
--     100           Steven            King
--     128           Steven            Markle

--## Formatting Reports
-- select UPPER(first_name) as employee_name from hr.EMPLOYEES
-- Example Output
-- EMPLOYEE_NAME
--   ELLEN
--   SUNDAR

-- ## Use case 2(Steven): without Upper()
-- select employee_id,first_name,last_name from hr.EMPLOYEES where first_name='Steven'

--Example output
--     Employee id    First Name       LAST_NAME
--     -----------    ----------       --------------
--     100           Steven            King
--     128           Steven            Markle

-- ## Use case 3(steven):
-- select employee_id,first_name,last_name from hr.EMPLOYEES where upper(first_name)=upper('steven')

-- ## Use case 4(sTeVeN):
-- select employee_id,first_name,last_name from hr.EMPLOYEES where upper(first_name)=upper('sTeVeN')

-- ## Common Use Case for Standarizing text
-- SELECT FIRST_NAME,UPPER(FIRST_NAME) AS Standardized_name from hr.EMPLOYEES

-- ## Common Use case formatting text
-- select employee_id,Upper(first_name),upper(last_name),email,salary from hr.EMPLOYEES

-- ## Common Use - Case Cleaning Inconsistent String Values
-- select upper(job_id) as job, count(*) as employees_count from hr.EMPLOYEES GROUP BY UPPER(job_id);
-- Example Output
-- JOB          EMPLOYEES_COUNT
-- AC_ACCOUNT   1
-- AC_MGR       1
-- AD_ASST      1
-- AD_PRES      1

-- ## Common Use case : Comparing Usernames or Codes
-- select employee_id,first_name,last_name,Email,salary from HR.EMPLOYEES where upper(EMAIL)=Upper('sking')

-- ######################################### 2. LOWER() ######################

-- SELECT * from dual

-- select lower('ORACLE') from dual
--Example output
-- oracle

-- SELECT LOWER('ORACLE SQL PROGRAMMING') FROM dual;
-- Output:
-- oracle sql programming

-- ## LOWER(): example with firstname
-- select first_name,LOWER(first_name) from hr.employees
-- Example output:

--     FIRST_NAME      LOWER(FIRST_NAME)
--     --------------- -----------------
--     Steven          steven
--     Neena           neena
--     Lex             lex
--     Alexander       alexander

-- ## LOWER(): example with email
-- select first_name,email,LOWER(email) from hr.employees

-- ## Example in WHERE condition
-- select first_name,Last_name,email from hr.employees where LOWER(email)="sking"
-- select * from hr.EMPLOYEES
-- select employee_id,first_name,Last_name,email from hr.employees where LOWER(EMAIL)="sking"
-- select employee_id,first_name,EMAIL from hr.employees
-- select employee_id,FIRST_NAME,LAST_NAME,EMAIL from HR.EMPLOYEES where LOWER(EMAIL)="SKING"

-- ## Common Use case: Email Formatting
-- select employee_id,first_name,LOWER(email) as email from hr.EMPLOYEES
-- -- Example Output
-- EMPLOYEE_ID    FIRST_NAME    EMAIL
-- 100            Steven        sking
-- 101            Neena         nyang
-- 102            Lex           lgarcia
-- 103            Alexander     ajames
-- 104            Bruce         bmiller

-- ## Common Use Case: Case-Insensitive Searching
-- SELECT employee_id,
--        first_name,
--        email
-- FROM hr.employees
-- WHERE LOWER(email) = 'sking';

-- Example Output
-- EMPLOYEE_ID    FIRST_NAME    EMAIL
-- 100            Steven        sking

-- ## Use case: Standardizing Imported Text Data

-- SELECT LOWER(email) AS standardized_email
-- FROM hr.employees;
-- Example O/p:
-- Stadanrdized_Email
-- abanda

-- #############################3. INITCAP() ########################

-- select INITCAP('oracle sql program')from dual
-- Example Ouptut
-- Oracle Sql Program

-- Select INITCAP('HELLO WORLD') from dual
-- O/P: Hello World

-- ## Example using HR.EMPLOYEES
-- select employee_id,INITCAP(first_name) from hr.EMPLOYEES
-- O/P :EMPLOYEE_ID FIRST_NAME
--         100         Ellen

-- ## Formatting full name
-- select INITCAP(first_name || ' ' || last_name) as full_name from hr.employees
-- FULL_NAME
-- Ellen Abel
-- Sundar Ande
-- Mozhe Atkinson

-- ## Common Use cases: Formatting employee names
-- select first_name,INITCAP(first_name) as Employee_Full_Name from hr.EMPLOYEES
--O/P
--FIRST_NAME    EMPLOYEE_FULL_NAME
-- Ellen         Ellen
-- Sundar        Sundar
-- Mozhe         Mozhe

-- ## Common Use cases: Formatting customer names
-- select INITCAP(first_name || ' ' ||last_name) as Customer_Name from HR.EMPLOYEES
-- O/P
--CUSTOMER_NAME
-- Ellen Abel
-- Sundar Ande
-- Mozhe Atkinson
-- Shelli Raida

-- ## Common Use Cases: Formatting City Names
-- select INITCAP(CITY) as City_Names from HR.EMPLOYEES
-- O/P:
-- City_Names
-- New York
-- Los Angeles
-- San Francisco
-- Chicago

-- ## Common Use Cases: Formatting report headings
-- SELECT INITCAP('employee salary report') AS report_heading FROM dual
-- O/P:
-- Employee Details Report

-- ################################# 4. Length() ####################

-- ## Length of character
-- select length('Oracle') from dual
-- O/P: length = 6

-- select length('data science') from dual
-- O/P: 12

-- ## Example using HR.EMPLOYEES
-- select first_name,length(first_name) from HR.EMPLOYEES
-- O/P:
--FIRST_NAME	LENGTH
-- Ellen     	5
-- Sundar   	6
-- Mozhe    	5
-- Shelli	    6
-- Amit     	4

-- ## ## Find employees whose first name is longer than 6 characters
-- select employee_id,first_name,Length(first_name) as First_name_chars from HR.EMPLOYEES where length(FIRST_NAME)>6
-- O/P
-- EMPLOYEE_ID    FIRST_NAME    FIRST_NAME_CHARS
-- 172            Elizabeth     9
-- 169            Harrison      8
-- 204            Hermann       7
-- 187            Anthony       7
-- 154            Nanette       7

-- ## Find employees whose last name has exactly 5 characters
-- select employee_id,last_name,Length(last_name) from HR.EMPLOYEES where length(LAST_NAME)=5
-- O/P:
-- EMPLOYEE_ID    LAST_NAME    LENGTH(LAST_NAME)
-- 116            Baida        5
-- 167            Banda        5
-- 172            Bates        5
-- 169            Bloom        5

-- ## Common Use case : Validate Username Lengths
-- select employee_id,email,Length(email) as username_length from HR.EMPLOYEES where length(email)<6
-- O/P :
-- EMPLOYEE_ID    EMAIL    USERNAME_LENGTH
-- 100            SKING    5
-- 101            NYANG    5
-- 110            JCHEN    5
-- 113            LPOPP    5

-- ## Common Use case :Validate phone numbers
-- select employee_id,first_name,PHONE_NUMBER,length(PHONE_NUMBER) from hr.EMPLOYEES WHERE length(PHONE_NUMBER)<>12
-- select length(PHONE_NUMBER) from HR.EMPLOYEES
-- select * from hr.EMPLOYEES
-- O/P:
-- EMPLOYEE_ID    FIRST_NAME    PHONE_NUMBER       LENGTH(PHONE_NUMBER)
-- 100            Steven        1.515.555.0100     14
-- 101            Neena         1.515.555.0101     14
-- 102            Lex           1.515.555.0102     14
-- 103            Alexander     1.590.555.0103     14

-- ## Common Use Case: Find long or short names
-- SELECT employee_id,first_name,last_name,length(first_name) as full_name_length,length(last_name) as Short_name_length from hr.EMPLOYEES where length(first_name)>6 or length(last_name)<=3
-- O/P:
-- EMPLOYEE_ID    FIRST_NAME     LAST_NAME    FULL_LONG_NAME    SHORT_NAME
-- 103            Alexander      James        9                 5
-- 112            Jose Manuel    Urman        11                5
-- 114            Den            Li           3                 2

-- ## Common Use Case: Data-quality checks
-- select employee_id,length(JOB_ID) as Job_length from hr.EMPLOYEES where length(JOB_ID)<>7
-- O/P
-- EMPLOYEE_ID    JOB_LENGTH
-- 206            10
-- 205            6
-- 101            5
-- 102            5

-- ## Common Use Case: Column formatting
-- SELECT employee_id,first_name,LENGTH(first_name) AS name_length FROM hr.employees;
-- O/P:
-- EMPLOYEE_ID    FIRST_NAME    NAME_LENGTH
-- 174            Ellen         5
-- 166            Sundar        6
-- 130            Mozhe         5

-- ##############################5. SUBSTR()##########################

-- SELECT SUBSTR('oracle',1,3) FROM dual;
-- O/P:
-- ora

-- SELECT SUBSTR('oracle',2,3) FROM dual;
-- O/P:
-- rac

-- SELECT SUBSTR('oracle',3,2) FROM dual;
-- O/P:
-- ac

-- SELECT SUBSTR('oracle',2) FROM dual;
-- O/P:
-- racle

-- ## Negative positions count from the end of the string.

-- SELECT SUBSTR('oracle',-3) FROM dual;
-- O/P:
-- cle

-- SELECT SUBSTR('oracle',-2) FROM dual
-- O/P:
-- le

-- ## Example using HR.EMPLOYEES
-- select first_name,substr(first_name,1,3) from hr.EMPLOYEES
-- O/P:
-- FIRST_NAME    SUBSTR(FIRST_NAME)
-- Ellen         Ell
-- Sundar        Sun
-- Mozhe         Moz

-- ## ## Return first character
-- select first_name,substr(first_name,1,1) from hr.EMPLOYEES
-- O/P:
-- FIRST_NAME    SUBSTR(FIRST_NAME)
-- Ellen         E
-- Sundar        S

-- ## Return last 3 characters
-- select first_name,substr(first_name,-3) from hr.EMPLOYEES
-- O/P:
-- FIRST_NAME    SUBSTR(FIRST_NAME)
-- Ellen         len
-- Sundar        dar
-- Mozhe         zhe

-- ## Extract part of email
-- select email, substr(email,1,3) from hr.employees
-- O/P:
-- EMAIL      SUBSTR(EMAIL)
-- ABANDA     ABA
-- ABULL      ABU
-- ACABRIO    ACA

-- ## Common Use case: Extract prefixes
-- SELECT employee_id,job_id,SUBSTR(job_id, 1, 2) AS prefix FROM hr.employees;
-- O/P:
-- EMPLOYEE_ID    JOB_ID       PREFIX
-- 206            AC_ACCOUNT   AC
-- 205            AC_MGR       AC
-- 200            AD_ASST      AD
-- 100            AD_PRES      AD
-- 101            AD_VP        AD

-- ## Common Use case: Extract suffixes 
-- SELECT employee_id,
--        job_id,
--        SUBSTR(job_id, -4) AS suffix
-- FROM hr.employees;

-- -- O/P:
-- EMPLOYEE_ID    JOB_ID       SUFFIX
-- 206            AC_ACCOUNT   OUINT
-- 205            AC_MGR       _MGR
-- 200            AD_ASST      ASST
-- 100            AD_PRES      PRES

-- ## Common use case: Extract Initials
-- SELECT first_name,last_name,SUBSTR(first_name, 1, 1) || SUBSTR(last_name, 1, 1) AS initials
-- FROM hr.employees;

-- Example Output:
-- FIRST_NAME    LAST_NAME    INITIALS
-- Ellen         Abel         EA
-- Sundar        Ande         SA
-- Mozhe         Atkinson     MA

-- ## Common Use case: Mask Values
-- SELECT phone_number,SUBSTR(phone_number, 1, 3) || '.XXX.XXXX' AS masked_phone
-- FROM hr.employees;

-- Output:
-- PHONE_NUMBER       MASKED_PHONE
-- 1.515.555.0100     1.5.XXX.XXXX
-- 1.515.555.0101     1.5.XXX.XXXX
-- 1.515.555.0102     1.5.XXX.XXXX

-- ## Common Use case: Split Identifiers
-- SELECT job_id,SUBSTR(job_id, 1, 2) AS department_code,SUBSTR(job_id,4) as job_type FROM hr.employees;
--Example Output
-- JOB_ID       DEPARTMENT_CODE    JOB_TYPE
-- AC_ACCOUNT   AC                 ACCOUNT
-- AC_MGR       AC                 MGR

-- ## Common use case: Get Part of an Email or Code
-- SELECT email,SUBSTR(email, 1, 3) AS email_prefix FROM hr.employees
--Example Output
-- EMAIL      EMAIL_PREFIX
-- ABANDA     ABA
-- ABULL      ABU
-- ACABRIO    ACA

-- ########################### 6. CONCAT() #########################
-- SELECT CONCAT('oracle','programming') FROM dual;