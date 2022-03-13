SELECT Department.Name AS Department, Employee.Name AS Employee, Salary
FROM (SELECT DepartmentID, MAX(salary) AS m_salary
      FROM Employee
      GROUP BY DepartmentID) AS TopEarners
        INNER JOIN Employee ON TopEarners.DepartmentID = Employee.DepartmentId AND TopEarners.m_salary = Employee.Salary
        INNER JOIN Department ON TopEarners.DepartmentID = Department.Id
        