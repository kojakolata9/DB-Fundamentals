SELECT e.EmployeeID,e.FirstName,
CASE
	WHEN p.StartDate>='20050101' THEN NULL
	ELSE p.Name
END AS ProjectName 
FROM Employees AS e
JOIN EmployeesProjects AS ep 
ON e.EmployeeID=ep.EmployeeID
JOIN Projects AS p
ON p.ProjectID=ep.ProjectID
WHERE e.EmployeeID=24
