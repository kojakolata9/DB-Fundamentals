SELECT DepartmentID,MAX(Salary)
FROM Employees
GROUP BY DepartmentID
HAVING NOT Max(Salary) BETWEEN 30000 AND 70000
  