--From the table DEPARTMENT and PERSON perform the following queries:  
--Part – A: 
--1. Combine information from Person and Department table using cross join or Cartesian product.
SELECT *
FROM PERSON 
CROSS JOIN DEPARTMENT 


--2. Find all persons with their department name 
SELECT P.PERSONNAME, D.DEPARTMENTNAME
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID

--3. Find all persons with their department name & code.
SELECT P.PERSONNAME, D.DEPARTMENTNAME, D.DEPARTMENTCODE
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID

--4. Find all persons with their department code and location.
SELECT P.PERSONNAME, D.DEPARTMENTCODE, D.LOCATION
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID

--5. Find the detail of the person who belongs to Mechanical department. 
SELECT *
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE D.DEPARTMENTNAME = 'MECHANICAL'

--6. Final person’s name, department code and salary who lives in Ahmedabad city.
SELECT P.PERSONNAME, D.DEPARTMENTCODE, P.SALARY
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE P.CITY = 'AHMEDABAD'

--7. Find the person's name whose department is in C-Block. 
SELECT P.PERSONNAME
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE D.LOCATION = 'C-BLOCK'


--8. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PERSONNAME, P.SALARY, D.DEPARTMENTNAME
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE P.CITY = 'JAMNAGAR'


--9. Retrieve person’s detail who joined the Civil department after 1-Aug-2001. 
SELECT *
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE D.DEPARTMENTNAME = 'CIVIL'
AND P.JOININGDATE > '2001-08-01'


--10. Display all the person's name with the department whose joining date difference with the current date 
--is more than 25 years. 
SELECT P.PERSONNAME, D.DEPARTMENTNAME
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE DATEDIFF(YEAR, P.JOININGDATE, GETDATE()) > 25


--11. Find department wise person counts.
SELECT D.DEPARTMENTNAME, COUNT(*) AS TOTAL_PERSONS
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME



--12. Give department wise maximum & minimum salary with department name. 
SELECT D.DEPARTMENTNAME, MAX(P.SALARY) AS MAX_SALARY, MIN(P.SALARY) AS MIN_SALARY
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME


--13. Find city wise total, average, maximum and minimum salary.
SELECT P.CITY, SUM(P.SALARY) AS TOTAL_SALARY, AVG(P.SALARY) AS AVG_SALARY, MAX(P.SALARY) AS MAX_SALARY, MIN(P.SALARY) AS MIN_SALARY
FROM PERSON P
GROUP BY P.CITY

--14. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(SALARY) AS AVG_SALARY
FROM PERSON
WHERE CITY = 'AHMEDABAD'


--15. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column) 
SELECT P.PERSONNAME + ' lives in ' + P.CITY + ' and works in ' + D.DEPARTMENTNAME + ' Department' AS DETAILS
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID


--Part – B: 
--16. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column) 
SELECT P.PERSONNAME + ' earns ' + CAST(P.SALARY AS VARCHAR) + ' from ' + D.DEPARTMENTNAME + ' department monthly.' AS DETAILS
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID


--17. Find city & department wise total, average & maximum salaries. 
SELECT P.CITY, D.DEPARTMENTNAME, SUM(P.SALARY) AS TOTAL_SALARY, AVG(P.SALARY) AS AVG_SALARY, MAX(P.SALARY) AS MAX_SALARY
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY P.CITY, D.DEPARTMENTNAME

--18. Find all persons who do not belong to any department. 
SELECT *
FROM PERSON
WHERE DEPARTMENTID IS NULL


--19. Find all departments whose total salary is exceeding 100000. 
SELECT D.DEPARTMENTNAME, SUM(P.SALARY) AS TOTAL_SALARY
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING SUM(P.SALARY) > 100000



--Part – C: 
--20. List all departments who have no person. 
SELECT *
FROM DEPARTMENT D
LEFT OUTER JOIN PERSON P
ON D.DEPARTMENTID = P.DEPARTMENTID
WHERE P.PERSONID IS NULL


--21. List out department names in which more than two persons are working. 
SELECT D.DEPARTMENTNAME
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING COUNT(*) > 2


--22. Give a 10% increment in the computer department employee’s salary. (Use Update)
UPDATE P
SET SALARY = SALARY * 1.10
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE D.DEPARTMENTNAME = 'COMPUTER'



