CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);
SHOW TABLES;

CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
SHOW TABLES;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;

show tables;

TRUNCATE TABLE employees;

show tables;

DROP TABLE employees;

show tables;

DROP DATABASE employee;

CREATE DATABASE employee;

use employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

DESC Employees;

INSERT INTO Departments (department_id, department_name)
VALUES (1, 'IT');

INSERT INTO Location (location)
VALUES ('Visakhapatnam');

INSERT INTO Employees (
    employee_id,
    employee_name,
    gender,
    age,
    designation,
    department_id,
    location_id,
    salary
)
VALUES (
    101,
    'Rahul',
    'M',
    25,
    'Data Analyst',
    1,
    1,
    30000.00
);

SELECT * FROM Employees;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Employees;
DELETE FROM Location;
DELETE FROM Departments;

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Employees;
SELECT * FROM Location;
SELECT * FROM Departments;

/* MySQL Assignment 2 – Querying Data*/

select distinct salary
from employees;

select Age as Employee_Age,
salary as Employee_Salary
from employees;

SELECT *
FROM Employees
WHERE salary > 50000
  AND hire_date < '2016-01-01';
  
select * from employees
where designation IS NULL;

UPDATE Employees
SET designation = 'Data Scientist'
WHERE employee_id = 5004;

select * from employees
where designation is null;

SELECT *
FROM Employees
ORDER BY department_id ASC,
salary DESC;

SELECT *
FROM Employees
WHERE hire_date >= '2018-01-01'
AND hire_date < '2019-01-01'
ORDER BY hire_date ASC
LIMIT 5;

SELECT SUM(e.salary) AS Total_Finance_Salary
FROM Employees e
JOIN Departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';

SELECT MIN(age) AS Minimum_Age
FROM Employees;

SELECT l.location,
MAX(e.salary) AS Maximum_Salary
FROM Employees e
JOIN Location l
ON e.location_id = l.location_id
GROUP BY l.location;

SELECT designation,
AVG(salary) AS Average_Salary
FROM Employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;

SELECT d.department_name,
COUNT(e.employee_id) AS Employee_Count
FROM Departments d
LEFT JOIN Employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) < 3;

SELECT l.location,
AVG(e.age) AS Average_Age
FROM Location l
JOIN Employees e
ON l.location_id = e.location_id
WHERE e.gender = 'F'
GROUP BY l.location_id, l.location
HAVING AVG(e.age) < 30;

SELECT e.employee_name,
       e.designation,
       d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;

SELECT d.department_name,
       COUNT(e.employee_id) AS Employee_Count
FROM Departments d
LEFT JOIN Employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

SELECT l.location,
       e.employee_name
FROM Employees e
RIGHT JOIN Location l
ON e.location_id = l.location_id;