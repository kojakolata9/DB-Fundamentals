SELECT 
DepositGroup,SUM(DepositAmount) AS [Total Sum]
FROM WizzardDeposits
WHERE MagicWandCreator = 'Ollivander family'
GROUP BY DepositGroup


