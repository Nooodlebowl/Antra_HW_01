USE AdventureWorks2019
GO

--Question 1
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

--Question 2
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice != 0

-- Question 3
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL

--Question 4
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice > 0

--Question 5
SELECT Name, Color
FROM Production.Product
WHERE Color IS NOT NULL

-- Question 6
SELECT 'NAME: '+ Name +' --  COLOR: ' + Color AS [Name and Color]
FROM Production.Product
WHERE Color IS NOT NULL

-- Question 7
SELECT ProductID, Name
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500

-- Question 8
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color = 'black' OR Color = 'blue'

-- Question 9
SELECT *
FROM Production.Product
WHERE Name LIKE 'S%'

-- Question 10
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%' or Name LIKE 'S%'
ORDER BY Name 

-- Question 11
SELECT *
FROM Production.Product
WHERE Name LIKE 'SPO[^K]%'
ORDER BY Name 

--Question 12
SELECT Distinct ProductSubcategoryID, Color 
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL
Order By ProductSubcategoryID
