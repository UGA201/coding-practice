SELECT L.Name AS Employee
FROM employee AS L
     LEFT JOIN employee AS R ON L.managerId = R.Id
WHERE L.Salary > R.Salary