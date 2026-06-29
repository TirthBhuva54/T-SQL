--From the table Deposit perform the following queries (ALTER & RENAME Operation):  
--Part – A: 
--1. Add two more columns City VARCHAR(20) and Pincode INT. 
	ALTER TABLE DEPOSIT
	ADD CITY VARCHAR(20),PINCODE INT
--2. Add column State VARCHAR(20). 
	ALTER TABLE DEPOSIT 
	ADD STATE VARCHAR(20)
--3. Change the size of CNAME column from VARCHAR(50) to VARCHAR(35). 
	ALTER TABLE DEPOSIT	
	ALTER COLUMN CNAME VARCHAR(35)
--4. Change the data type of AMOUNT from DECIMAL to INT.
	ALTER TABLE DEPOSIT
	ALTER COLUMN AMOUNT INT
--5. Delete column City from the DEPOSIT table.
	ALTER TABLE DEPOSIT
	DROP COLUMN CITY
--6. Rename column ACTNO to ANO.
	EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'
--7. Rename column BNAME to BRANCH_NAME.
	EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'

--8. Rename table DEPOSIT to DEPOSIT_DETAIL.  
	EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'
--9. Add column IFSC_CODE VARCHAR(15).
	ALTER TABLE DEPOSIT_DETAIL 
	ADD  IFSC_CODE VARCHAR(15)
--10. Change the size of BNAME column from VARCHAR(50) to VARCHAR(30). 
	ALTER TABLE DEPOSIT_DETAIL
	ALTER COLUMN BNAME VARCHAR(30)
--Part – B: 
--11. Rename column ADATE to AOPENDATE. 
	EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'
--12. Delete column AOPENDATE from DEPOSIT_DETAIL table.
	ALTER TABLE DEPOSIT_DETAIL
	DROP COLUMN AOPENDATE
--13. Rename column CNAME to CUSTOMER_NAME. 
	EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMER_NAME'
--14. Add column COUNTRY VARCHAR(20). 
	ALTER TABLE DEPOSIT_DETAIL
	ADD COUNTRY VARCHAR(20);
--15. Add column ACCOUNT_TYPE VARCHAR(15).
	ALTER TABLE DEPOSIT_DETAIL
	ADD ACCOUNT_TYPE VARCHAR(15)
--Part – C: 
--16. Change data type of Pincode from INT to BIGINT. 
	ALTER TABLE DEPOSIT_DETAIL
	ALTER COLUMN PINCODE BIGINT
--17. Delete column ACCOUNT_TYPE.
	ALTER TABLE DEPOSIT_DETAIL
	DROP COLUMN ACCOUNT_TYPE
--18. Rename column AMOUNT to BALANCE.
	EXEC SP_RENAME 'DEPOSIT_DETAIL.AMOUNT','BALANCE'
--19. Add column STATUS VARCHAR(10).
	ALTER TABLE DEPOSIT_DETAIL
	ADD STATUS  VARCHAR(10)

--20. Change table name DEPOSIT_DETAIL to BANK_DEPOSIT. 
	EXEC SP_RENAME  'DEPOSIT_DETAIL','BANK_DEPOSIT'
--DELETE, Truncate, Drop Operation 
--From the table Deposit perform the following queries:  
--Part – A: 
--1. Delete all the records having amount less than or equal to 4000.
	DELETE FROM BANK_DEPOSIT
	WHERE BALANCE<=4000

	SELECT * FROM BANK_DEPOSIT
--2. Delete all the accounts of ‘MAVDI’ branch. 
	DELETE FROM BANK_DEPOSIT
	WHERE BNAME ='MAVDI'

--3. Delete all the accounts having account number (ANO) greater than 102 and less than 105. 
	DELETE FROM BANK_DEPOSIT
	WHERE ANO > 102 AND ANO < 105;

--4. Delete all the accounts whose branch is ‘BEDI’ or ‘MADHAPAR’. 
	DELETE FROM BANK_DEPOSIT
	WHERE Bname IN ('BEDI', 'MADHAPAR')

--5. Delete all the accounts whose account number is NULL.
	DELETE FROM BANK_DEPOSIT
	WHERE ANO IS NULL

--6. Delete all the remaining records using DELETE command. 
	DELETE FROM BANK_DEPOSIT

--7. Delete all the records of DEPOSIT_DETAIL table. (Use TRUNCATE) 
	TRUNCATE TABLE BANK_DEPOSIT

--8. Remove DEPOSIT_DETAIL table. (Use DROP) 
	DROP TABLE  BANK_DEPOSIT
--9. Delete all the records having SPI greater than or equal to 9.00.  
	DELETE FROM STUDENT
	WHERE SPI >=9

	SELECT * FROM STUDENT

--10. Delete all the students who belong to ‘RAJKOT’.  
	DELETE FROM STUDENT
	WHERE CITY='RAJKOT'

--From the table Student perform the following queries:  
--Part – B: 
--11. Delete all the students whose STDID is greater than 105. 
	DELETE FROM STUDENT
	WHERE STDID>105

--12. Delete the records whose SPI is NULL and SNAME is not NULL.
	DELETE FROM STUDENT
	WHERE SPI IS NULL AND SNAME IS NOT NULL
--13. Delete the records whose SPI is 50% of 10.00.  
	DELETE FROM STUDENT
	WHERE SPI =5

--14. Delete the records whose branch name is not empty.
	DELETE FROM STUDENT
	WHERE BRANCH IS NOT NULL
--15. Delete all the records of STUDENT table. (Use TRUNCATE)
	TRUNCATE TABLE STUDENT