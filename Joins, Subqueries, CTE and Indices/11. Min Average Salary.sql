SELECT MIN(computed.MinSalary) AS MinAverageSalary FROM (
	SELECT AVG(Salary) AS MinSalary FROM Employees
	GROUP BY DepartmentID) as computed