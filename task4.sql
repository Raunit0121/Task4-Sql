CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    age INT,
    salary DECIMAL(10,2)
);
INSERT INTO employees (name, department, age, salary) VALUES
('Alice', 'HR', 30, 50000),
('Bob', 'HR', 34, 52000),
('Charlie', 'IT', 28, 60000),
('David', 'IT', 35, 61000),
('Eva', 'Marketing', 29, 45000),
('Frank', 'Marketing', 32, 47000),
('Grace', 'IT', 31, 62000),
('Helen', 'Finance', 27, 55000);
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, AVG(age) AS average_age
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
SELECT *
FROM employees

