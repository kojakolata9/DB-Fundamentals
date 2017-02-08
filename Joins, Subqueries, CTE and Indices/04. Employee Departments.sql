SELECT TOP(5) e.EmployeeID,e.FirstName,e.Salary,d.Name AS [DepartmentName]
  FROM Employees AS e
  JOIN Departments AS d 
  ON e.DepartmentID=d.DepartmentID
  ORDER BY e.DepartmentID