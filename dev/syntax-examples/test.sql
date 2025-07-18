--
-- Theme Test File for SQL
-- This file contains various standard SQL statements.
--

-- --- Data Definition Language (DDL) ---
-- @keyword: CREATE, TABLE, PRIMARY KEY, etc.
-- @type: INT, VARCHAR, TIMESTAMP, etc.
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE,
    department_id INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- --- Data Manipulation Language (DML) ---
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Sales');

INSERT INTO employees (first_name, last_name, email, hire_date, department_id, salary) VALUES
('Alice', 'Johnson', 'alice.j@example.com', '2022-01-15', 1, 90000.00),
('Bob', 'Smith', 'bob.s@example.com', '2021-03-12', 1, 85000.00),
('Charlie', 'Brown', 'charlie.b@example.com', '2023-07-01', 3, 72000.00);


-- --- Data Query Language (DQL) ---
-- A complex query to test joins, functions, and clauses
SELECT
    d.department_name,
    COUNT(e.employee_id) AS number_of_employees,
    AVG(e.salary) AS average_salary
FROM
    employees AS e
JOIN
    departments AS d ON e.department_id = d.department_id
WHERE
    e.hire_date > '2020-01-01'
    AND e.salary IS NOT NULL
GROUP BY
    d.department_name
HAVING
    COUNT(e.employee_id) > 1
ORDER BY
    average_salary DESC
LIMIT 10;

-- --- Data Control Language (DCL) ---
GRANT SELECT, INSERT ON employees TO 'new_user'@'localhost';
REVOKE INSERT ON employees FROM 'new_user'@'localhost';


-- --- Deliberate Syntax Error ---
-- Remove the '--' to test LSP diagnostics
-- SELECT first_name, last_name FROM employees WHERE;
