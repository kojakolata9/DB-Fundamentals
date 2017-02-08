SELECT e.FirstName,e.LastName,e.HireDate,d.Name FROM Employees AS e
JOIN Departments AS d 
ON d.DepartmentID=e.DepartmentID
WHERE e.HireDate>'19990101' AND (d.Name='Sales' OR d.Name='Finance')
ORDER BY e.HireDate

