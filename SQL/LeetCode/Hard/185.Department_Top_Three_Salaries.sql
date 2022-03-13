SELECT sub.Department, sub.Employee, sub.Salary
FROM (SELECT d.Name AS Department
            , e.Name AS Employee
            , Salary
            , DENSE_RANK() OVER(PARTITION BY e.DepartmentId ORDER BY e.Salary DESC) AS rank
        FROM Employee AS e
            INNER JOIN Department AS d ON e.DepartmentId = d.Id
     ) AS sub
WHERE sub.rank <= 3
     