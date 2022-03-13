SELECT salary*months, COUNT(salary*months)
FROM Employee
GROUP BY salary*months
ORDER BY salary*months DESC
LIMIT 1