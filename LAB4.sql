
--ALTER OPERATION


--PART A



-- Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE DEPOSIT ADD CITY VARCHAR(20), PINCODE INT

-- Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)

-- Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

-- Rename Column ActNo to ANO.

SP_RENAME 'DEPOSIT.ACTNO', 'ANO'

-- Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT DROP COLUMN CITY

-- Change name of table DEPOSIT to DEPOSIT_DETAIL.

sp_rename 'DEPOSIT', 'DEPOSIT_DETAIL'

--PART B



-- Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.

SP_RENAME 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE'

-- Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE

-- Rename Column CNAME to CustomerName.SP_RENAME 'DEPOSIT_DETAIL.CNAME', 'CUSTOMERNAME'--PART CCREATE TABLE STUDENT_DETAIL(
ENROLLMENT_NO VARCHAR(20),
NAME VARCHAR(25),
CPI DECIMAL(5,2),
BIRTHDATE DATETIME
);
-- Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).

ALTER TABLE STUDENT_DETAIL ADD CITY_NEW VARCHAR (20) NOT NULL DEFAULT 'DELHI' , BACKLOG INT

-- Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).

ALTER TABLE STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35)

-- Change the data type DECIMAL to INT in CPI Column.

ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT

-- Rename Column Enrollment_No to ENO.

SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO', 'ENO'

-- Delete Column City from the student_detail table.

--UNABLE TO DELETE COLUMN WITH DEFAULT VALUE SO DELETE IT FROM OBJECT EXPLORER
SELECT *FROM STUDENT_DETAIL

-- Change name of table student_detail to STUDENT_MASTER.

SP_RENAME 'STUDENT_DETAIL', 'STUDENT_MASTER'



--DELETE,TRUNCATE,DROP OPERATION


--PART A


-- Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 

DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000

-- Delete all the accounts CHANDI BRANCH.

DELETE FROM DEPOSIT_DETAIL WHERE BNAME= 'CHANDI'

SELECT *FROM DEPOSIT_DETAIL

-- Delete all the accounts having account number (ANO) is greater than 105.

DELETE FROM DEPOSIT_DETAIL WHERE ANO>105

-- Delete all the records of Deposit_Detail table. (Use Truncate)

TRUNCATE TABLE DEPOSIT_DETAIL

-- Remove Deposit_Detail table. (Use Drop)DROP TABLE DEPOSIT_DETAIL--PART BCREATE TABLE EMPLOYEE_MASTER(
EMPNO INT,
EMPNAME VARCHAR(25),
JOININGDATE DATETIME,
SALARY DECIMAL (8,2),
CITY VARCHAR(20)
);
INSERT INTO EMPLOYEE_MASTER VALUES
(101,'Keyur', '2002-01-05', 12000,'Rajkot'),
(102,'Hardik', '2004-02-15', 14000,'Ahmedabad'),
(103,'Kajal', '2006-03-14', 15000,'Baroda'),
(104,'Bhoomi', '2005-06-23', 12500,'Ahmedabad'),
(105,'Harmit', '2004-02-15', 14000,'Rajkot'),
(106,'Mitesh', '2001-09-25', 5000,'Jamnagar'),
(107,'Meera', null , 7000,'Morbi'),
(108,'Kishan', '2003-02-06', 10000,null)
-- Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 

DELETE FROM EMPLOYEE_MASTER WHERE SALARY>=14000 

-- Delete all the Employees who belongs to ‘RAJKOT’ city.

DELETE FROM EMPLOYEE_MASTER WHERE CITY='Rajkot' 
 
-- Delete all the Employees who joined after 1-1-2007.

DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE>'2007-01-01' 

-- Delete the records of Employees whose joining date is null and Name is not null.

DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE IS NULL OR EMPNAME IS NULL 

-- Delete the records of Employees whose salary is 50% of 20000.

DELETE FROM EMPLOYEE_MASTER WHERE SALARY= (0.50*20000)

-- Delete the records of Employees whose City Name is not empty.

DELETE FROM EMPLOYEE_MASTER WHERE CITY IS NOT NULL

-- Delete all the records of Employee_MASTER table. (Use Truncate)

TRUNCATE TABLE EMPLOYEE_MASTER

-- Remove Employee_MASTER table. (Use Drop)DROP TABLE EMPLOYEE_MASTER--PART C-- Summarize Delete, Truncate and Drop--BYEEEE