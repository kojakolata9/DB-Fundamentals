SELECT * FROM(
  SELECT e.EmployeeID,e.FirstName,e.LastName,d.Name as [DepartmentName]
  FROM Employees AS e
  JOIN Departments AS d 
  ON d.DepartmentID=e.DepartmentID
  ) AS computed
WHERE DepartmentName='Sales'
ORDER BY computed.EmployeeID
 