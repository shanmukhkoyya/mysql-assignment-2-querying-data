-- WARNING: This practice script drops and recreates the `employee` database.
-- Run it only in a disposable learning environment. It is not a production migration.

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

-- Sample data for the query exercises.
-- The preceding DDL demonstration intentionally empties these tables.
INSERT INTO Departments (department_id, department_name) VALUES
    (1, 'IT'),
    (2, 'Finance'),
    (3, 'HR'),
    (4, 'Sales');

INSERT INTO Location (location_id, location) VALUES
    (1, 'Visakhapatnam'),
    (2, 'Hyderabad'),
    (3, 'Bengaluru');

INSERT INTO Employees (
    employee_id, employee_name, gender, age, hire_date,
    designation, department_id, location_id, salary
) VALUES
    (5001, 'Asha Sharma', 'F', 28, '2017-03-15', 'Data Analyst', 1, 1, 62000.00),
    (5002, 'Ravi Kumar', 'M', 35, '2015-10-21', 'Senior Data Analyst', 1, 2, 72000.00),
    (5003, 'Priya Reddy', 'F', 27, '2018-06-10', 'Financial Analyst', 2, 2, 48000.00),
    (5004, 'Arjun Rao', 'M', 30, '2019-04-01', NULL, 2, 3, 54000.00),
    (5005, 'Neha Singh', 'F', 26, '2016-01-15', 'HR Executive', 3, 1, 42000.00),
    (5006, 'Mohan Das', 'M', 41, '2014-11-08', 'Finance Manager', 2, 3, 85000.00),
    (5007, 'Sneha Patil', 'F', 29, '2018-08-26', 'Business Analyst', 4, 2, 58000.00),
    (5008, 'Kiran Reddy', 'M', 23, '2020-02-11', NULL, 1, 1, 30000.00);

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