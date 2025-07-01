

SELECT name,
       (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees


SELECT name
FROM employees
WHERE department_id = (
    SELECT id FROM departments WHERE name = 'HR'
);

SELECT name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id

SELECT dept_name, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) dept_avgs
JOIN departments d ON dept_avgs.department_id = d.id
)

SELECT name
FROM employees
WHERE department_id IN (
    SELECT id FROM departments WHERE region = 'West'
)

SELECT name
FROM departments d
WHERE EXISTS (
    SELECT 1 FROM employees e WHERE e.department_id = d.id
)

