	CREATE TABLE STUDENT(
		StuID INT,
		FirstName VARCHAR(25),
		LastName VARCHAR(25),
		Website VARCHAR(50),
		City VARCHAR(25),
		Address VARCHAR(100)
	);

	INSERT INTO STUDENT VALUES 
	(1011, '[Keyur]', 'Patel', 'technothenet.com', 'Rajkot', 'A-303 ''Vasant Kunj'', Rajkot'),
	(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', '"Ram Krupa", Raiya Road'),
	(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
	(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '"Jig''s Home", Narol'),
	(1055, 'Harmit', 'Mitel', '@me.darshan.com', 'Rajkot', 'B-55, Raj Residency'),
	(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'A502, Club House Building')

	Select *from Student




--PART A



--1. Display the name of students whose name starts with ‘k’. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'K%'

--2. Display the name of students whose name consists of five characters. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters. 

SELECT FirstName,LastName FROM STUDENT WHERE City LIKE '_____A'

--4. Display all the students whose last name ends with ‘tel’.

SELECT FirstName FROM STUDENT WHERE LastName LIKE '%tel'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'K_Y%'

--7. Display the name of students having no website and name consists of five characters. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '_____' AND WEBSITE IS NULL

--8. Display all the students whose last name consist of ‘jer’.   

SELECT FirstName FROM STUDENT WHERE LastName LIKE '%JER%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’. 

SELECT FirstName FROM STUDENT WHERE City LIKE '[R B]%'

--10. Display all the name students having websites. 

SELECT FirstName FROM STUDENT WHERE WEBSITE IS NOT NULL

--11. Display all the students whose name starts from alphabet A to H. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '[A-H]%'

--12. Display all the students whose name’s second character is vowel. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '_[AEIOU]%'

--13. Display the name of students having no website and name consists of minimum five characters. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '_____' AND Website IS NULL

--14. Display all the students whose last name starts with ‘Pat’.   

SELECT FirstName FROM STUDENT WHERE LastName LIKE 'PAT%'

--15. Display all the students whose city name does not starts with ‘b’. 

SELECT FirstName FROM STUDENT WHERE CITY NOT LIKE 'B%'





--Part – B: 



--1. Display all the students whose name starts from alphabet A or H. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '[A-H]%'

--2. Display all the students whose name’s second character is vowel and of and start with H. 

SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'H[AEIOU]%'

--3. Display all the students whose last name does not ends with ‘a’. 

SELECT FirstName FROM STUDENT WHERE LastName NOT LIKE '%A'

--4. Display all the students whose first name starts with consonant. 

SELECT FirstName FROM STUDENT WHERE FirstName NOT LIKE '[AEIOU]%'

--5. Display all the students whose website contains .net 

SELECT FirstName FROM STUDENT WHERE Website LIKE '%.NET'





--Part – C: 



--1. Display all the students whose address consist of -. 

SELECT FirstName FROM STUDENT WHERE Address LIKE '%-%'

--2. Display all the students whose address contains single quote or double quote. 

SELECT FirstName FROM STUDENT WHERE Address LIKE '%''%''%' OR Address LIKE '%"%"%'

--3. Display all the students whose website contains @. 

SELECT FirstName FROM STUDENT WHERE Website LIKE '%@%'

--4. Display all the names those are either four or five characters.

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '____' OR FirstName LIKE '_____'



--EXTRA

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '%[%]%'

--USE ESCAPE SEQUENCE FOR ANY SYMBOL

SELECT FirstName FROM STUDENT WHERE FirstName LIKE '%|[%|]%' ESCAPE '|'
