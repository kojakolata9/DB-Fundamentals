SELECT TOP(50) Name AS Game, FORMAT([Start],'yyy-MM-dd') AS [Started]  FROM Games
WHERE DATEPART(yyyy,[Start])=2011 OR DATEPART(yyyy,[Start])=2012
ORDER BY [Start],Name