--From the tables EMPLOYEE perform the following queries (LIKE Operation): 
--Part – A: 
SELECT * FROM EMPLOYEE
--1. Display employees detail whose FIRSTNAME starts with ‘H’.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE 'H%'
--2. Display employees whose FIRSTNAME consists of exactly 5 characters.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '_____'
--3. Display employees whose CITY ends with ‘T’ and has 6 characters.
	SELECT * FROM EMPLOYEE
	WHERE CITY LIKE '_____T';
--4. Display employees whose LASTNAME ends with ‘EL’.
	SELECT * FROM EMPLOYEE
	WHERE LASTNAME LIKE '%EL';
--5. Display employees whose FIRSTNAME starts with ‘R’ and ends with ‘A’.
	SELECT * FROM  EMPLOYEE
	WHERE FIRSTNAME LIKE 'R%A'
--6. Display employees whose FIRSTNAME starts with ‘V’ and third character is ‘S’.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE 'V_S%'
--7. Display employees whose CITY is NULL and FIRSTNAME has 6 characters. 
	SELECT * FROM EMPLOYEE
	WHERE CITY IS NULL AND FIRSTNAME LIKE '______';
	-- NO OUTPUT

--8. Display employees whose FIRSTNAME contains ‘AR’. 
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '%AR%'
--9. Display employees whose CITY starts with ‘R’ or ‘B’.
	SELECT * FROM EMPLOYEE
	WHERE CITY LIKE 'R%' OR CITY LIKE 'B%'
--10. Display employees whose DEPARTMENT is NOT NULL.
	SELECT * FROM EMPLOYEE
	WHERE DEPARTMENT IS NOT NULL
--11. Display employees whose FIRSTNAME starts from alphabet A to H.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '[A-H]%'
--12. Display employees whose second character of FIRSTNAME is a vowel.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '_[AEIOUaeiou]%'
--13. Display employees whose FIRSTNAME length ≥ 5.
	SELECT * FROM  EMPLOYEE
	WHERE LEN(FIRSTNAME)>=5
--14. Display employees whose LASTNAME starts with ‘PA’. 
	SELECT * FROM EMPLOYEE
	WHERE LASTNAME LIKE 'PA%'
--15. Display employees whose CITY does not start with ‘B’. 
	SELECT * FROM EMPLOYEE
	WHERE CITY NOT LIKE 'B%'

--16. Display employees whose second character of FIRSTNAME is a not vowel.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '[^AEIOUaeiou]%'

--17. Display employees whose JOINING YEAR last digit is 4 or 6. 
	SELECT * FROM EMPLOYEE
	WHERE JOININGYEAR LIKE '%4' OR JOININGYEAR LIKE '%6'
--18. Display employees detail whose FIRSTNAME starts with ‘H’, ends with ‘I’, and CITY contains ‘RA’.
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE 'H%I' AND CITY LIKE '%RA%'
--19. Display employees detail whose FIRSTNAME contains ‘A’, CITY ends with ‘D’, and DEPARTMENT is NOT 
--NULL. 
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '%A%' AND CITY LIKE '%D' AND DEPARTMENT IS NOT NULL
--20. Display employees whose second and third characters of FIRSTNAME are vowels and CITY starts with ‘R’. 
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '_[AEIOUaeiou][AEIOUaeiou]%' AND CITY LIKE 'R%'
--Part – B: 
--21. Display employees whose CITY contains ‘RA’ and salary less than 13000 and joining year last digit is 6.
	SELECT * FROM EMPLOYEE
	WHERE CITY LIKE '%RA%' AND SALARY < 13000 AND JOININGYEAR LIKE '%6'

--22. Display employees whose SALARY between 10000 and 15000 and CITY name contains 'KO' and 
--FIRSTNAME start with H.
	SELECT * FROM EMPLOYEE
	WHERE SALARY BETWEEN 10000 AND 15000 AND CITY LIKE '%KO%' AND FIRSTNAME LIKE 'H%'

--23. Display employees whose FIRSTNAME starts with ‘A’ or ‘D’ and SALARY greater than 12000. 
	SELECT * FROM EMPLOYEE
	WHERE (FIRSTNAME LIKE 'A%' OR FIRSTNAME LIKE 'D%') AND SALARY > 12000
--24. Display employees whose CITY contains ‘N’ and SALARY less than 15000.
	SELECT * FROM EMPLOYEE
	WHERE CITY LIKE '%N%' AND SALARY < 15000

--25. Display employees whose FIRSTNAME length = 6 and CITY ends with ‘AR’.
	SELECT * FROM EMPLOYEE
	WHERE LEN(FIRSTNAME) = 6 AND CITY LIKE '%AR'
 
--Part – C: 
--26. Display employees whose FIRSTNAME ends with a vowel, department name start with vowel, and 
--SALARY is between 10000 and 15000. 
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '%[AEIOUaeiou]' AND DEPARTMENT LIKE '[AEIOUaeiou]%' AND SALARY BETWEEN 10000 AND 15000

--27. Display employees whose LASTNAME contains ‘A’ at least twice, gender is male, and SALARY is not equal 
--to 14000. 
	SELECT * FROM EMPLOYEE
	WHERE LASTNAME LIKE '%A%A%' AND GENDER = 'MALE' AND SALARY <> 14000

--28. Display employees whose FIRSTNAME second character is vowel and LASTNAME ends with ‘R’ and 
--SALARY less than 12000. 
	SELECT * FROM EMPLOYEE
	WHERE FIRSTNAME LIKE '_[AEIOUaeiou]%' AND LASTNAME LIKE '%R'  AND SALARY < 12000

--29. Display employees whose CITY is NOT NULL and FIRSTNAME does not start with vowel and DEPARTMENT 
--not in (‘HR’, ‘IT’). 
	SELECT * FROM EMPLOYEE
	WHERE CITY IS NOT NULL AND FIRSTNAME NOT LIKE '[AEIOUaeiou]%' AND DEPARTMENT NOT IN ('HR','IT')

--30. Display employees whose CITY is not NULL, FIRSTNAME ends with vowels, and DEPARTMENT is neither 
--‘HR’ nor ‘IT’.
	SELECT * FROM EMPLOYEE
	WHERE CITY IS NOT NULL AND FIRSTNAME LIKE '%[AEIOUaeiou]' AND DEPARTMENT NOT IN ('HR','IT')
