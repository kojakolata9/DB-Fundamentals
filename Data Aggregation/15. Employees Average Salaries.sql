
SELECT * INTO EmployeesAverageSalaries FROM Employees
WHERE Employees.Salary>30000

DELETE FROM EmployeesAverageSalaries
WHERE EmployeesAverageSalaries.ManagerID=42

UPDATE EmployeesAverageSalaries 
SET EmployeesAverageSalaries.Salary=EmployeesAverageSalaries.Salary+5000
WHERE EmployeesAverageSalaries.DepartmentID=1

SELECT DepartmentID,AVG(Salary) AS AverageSalary FROM EmployeesAverageSalaries
GROUP BY DepartmentID

