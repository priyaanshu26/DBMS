CREATE TABLE EMP(
EID INT,
ENAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
JOININGDATE DATE,
CITY VARCHAR(50)
);


INSERT INTO EMP VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
(107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot')



--Part - A:


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively. 

SELECT MIN(SALARY) AS MINIMUM, MAX(SALARY) AS MAXIMUM FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively. 

SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMP

--3. Find total number of employees of EMPLOYEE table. 

SELECT COUNT(ENAME) FROM EMP

--4. Find highest salary from Rajkot city. 

SELECT MAX(SALARY) FROM EMP WHERE CITY='Rajkot'

--5. Give maximum salary from IT department. 

SELECT MAX(SALARY) FROM EMP WHERE DEPARTMENT='IT'

--6. Count employee whose joining date is after 8-feb-91. 

SELECT COUNT(EID) FROM EMP WHERE JOININGDATE> '1991-02-08'

--7. Display average salary of Admin department. 

SELECT AVG(SALARY) FROM EMP WHERE DEPARTMENT= 'Admin'

--8. Display total salary of HR department. 

SELECT SUM(SALARY) FROM EMP WHERE DEPARTMENT='HR'

--9. Count total number of cities of employee without duplication. 

SELECT COUNT(DISTINCT CITY) FROM EMP

--10. Count unique departments. 

SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad. 

SELECT MIN(SALARY) FROM EMP WHERE CITY='Ahmedabad'

--12. Find city wise highest salary. 

SELECT MAX(SALARY), CITY FROM EMP GROUP BY CITY

--13. Find department wise lowest salary. 

SELECT MIN(SALARY), DEPARTMENT FROM EMP GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city. 

SELECT COUNT(EID), CITY FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table. 

SELECT SUM(SALARY), DEPARTMENT FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department name. 

SELECT AVG(SALARY) FROM EMP GROUP BY DEPARTMENT




--Part – B: 


--1. Count the number of employees living in Rajkot. 

SELECT COUNT(EID) FROM EMP WHERE CITY='Rajkot'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 

SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMP

--3. Display the total number of employees hired before 1st January, 1991. 

SELECT COUNT(EID) FROM EMP WHERE JOININGDATE< '1991-01-01'




--Part – C: 


--1. Count the number of employees living in Rajkot or Baroda. 

SELECT COUNT(EID) FROM EMP WHERE CITY = 'Rajkot' OR CITY = 'Baroda'

--2. Display the total number of employees hired before 1st January, 1991 in IT department. 

SELECT COUNT(EID) FROM EMP WHERE JOININGDATE < '1991-01-01' AND DEPARTMENT = 'IT'

--3. Find the Joining Date wise Total Salaries. 

SELECT SUM(SALARY), JOININGDATE FROM EMP GROUP BY JOININGDATE

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.

SELECT MAX(SALARY), CITY, DEPARTMENT FROM EMP GROUP BY CITY, DEPARTMENT HAVING CITY LIKE 'R%' 



--EXTRA

--CALCULATE AVG SALARY FOR EACH CITY

SELECT AVG(SALARY), CITY FROM EMP GROUP BY CITY

--SECOND HIGHEST SALARY

SELECT MAX(SALARY) FROM EMP WHERE SALARY<(SELECT MAX(SALARY) FROM EMP)

--COUNT EMPLOYEE WHO JOINED IN FIRST HALF

SELECT COUNT(EID) FROM EMP WHERE ((SELECT MONTH(JOININGDATE)) < 7)

--NAME AND SALARY WHO JOINED LAST

SELECT ENAME, SALARY FROM EMP WHERE JOININGDATE>=(SELECT MAX(JOININGDATE) FROM EMP)

--EMPLOYEE NAME WITH HIGHEST SALARY IN EACH DEPARTMENT

SELECT ENAME, DEPARTMENT, MAX(SALARY) FROM EMP 
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMP GROUP BY DEPARTMENT)
GROUP BY ENAME, DEPARTMENT

