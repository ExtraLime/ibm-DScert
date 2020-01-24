*/Query 1: Retrieve all employees whose address is in Elgin,IL

select * from EMPLOYEES where ADDRESS like '%Elgin,IL'


*/Query 2: Retrieve all employees who were born during the 1970's.

select * from EMPLOYEES where B_DATE like '197%'


*/ Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .

select * from EMPLOYEES where DEP_ID=5 and SALARY between 60000 and 70000;


--Query 4A: Retrieve a list of employees ordered by departmentID.

select * from EMPLOYEES order by DEP_ID



--Query 4B: Retrieve a list of employees orderedin descending order by departmentIDand within each departmentordered alphabetically in descending order by last name.

select * from EMPLOYEES order by DEP_ID desc, L_NAME desc


--Query 5A: For each department ID retrieve thenumberof employees in the department.

select DEP_ID, COUNT(DEP_ID) from EMPLOYEES  group by DEP_ID


--Query 5B: For each department retrieve thenumber of employees in thedepartment, and theaverage employees salaryin the department.

select DEP_ID, COUNT(DEP_ID), CAST(AVG(SALARY) as decimal (7,2)) 
from EMPLOYEES  group by DEP_ID


--Query 5C: Label the computed columnsin the result set of Query 5B as “NUM_EMPLOYEES”and “AVG_SALARY”.

select DEP_ID, COUNT(DEP_ID) as NUM_EMPLOYEES, CAST(AVG(SALARY) as decimal (7,2))  as AVG_SALARY
from EMPLOYEES  group by DEP_ID


--Query 5D: In Query 5C order the result set by Average Salary.

select DEP_ID, COUNT(DEP_ID) as NUM_EMPLOYEES, CAST(AVG(SALARY) as decimal (7,2))  as AVG_SALARY
from EMPLOYEES  group by DEP_ID order by 3


--Query 5E: In Query 5Dlimitthe result to departments withfewerthan 4 employees.

select DEP_ID, COUNT(DEP_ID) as NUM_EMPLOYEES, CAST(AVG(SALARY) as decimal (7,2))  as AVG_SALARY
from EMPLOYEES 
group by DEP_ID 
having COUNT(DEP_ID) < 4
order by 3 


--BONUS Query 6: Similar to 4B but instead of department ID use department name. Retrieve a list of employees ordered by departmentname,and within each departmentordered alphabetically in descending order by last name.

SELECT  DEPARTMENTS.DEP_NAME,EMPLOYEES.F_NAME,EMPLOYEES.L_NAME
FROM
 DEPARTMENTS
 JOIN EMPLOYEES 
ON  EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP
order by DEPARTMENTS.DEP_NAME, EMPLOYEES.L_NAME desc