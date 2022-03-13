CREATE FUNCTION getNthHighestSalary(N INT) 
RETURNS INT
BEGIN
    DECLARE A INT;
        SET A = N - 1;
    RETURN (SELECT DISTINCT Salary
            FROM Employee
            ORDER BY Salary DESC
            LIMIT A, 1
           );
END