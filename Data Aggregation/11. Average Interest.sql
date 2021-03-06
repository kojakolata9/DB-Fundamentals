SELECT DepositGroup,IsDepositExpired,AVG(DepositInterest)
FROM WizzardDeposits
WHERE DATEPART(yyyy,DepositStartDate)>=1985
GROUP BY DepositGroup,IsDepositExpired
ORDER BY DepositGroup DESC,IsDepositExpired