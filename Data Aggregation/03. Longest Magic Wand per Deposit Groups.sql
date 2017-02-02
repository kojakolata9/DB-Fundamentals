SELECT DepositGroup,MAX(MagicWandSize) AS [Longest Magic Wand]  FROM WizzardDeposits
GROUP BY DepositGroup