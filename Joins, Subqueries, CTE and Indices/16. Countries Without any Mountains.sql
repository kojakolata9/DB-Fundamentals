SELECT COUNT(*) FROM Mountains AS m
JOIN MountainsCountries AS mc
ON m.Id=mc.MountainId
RIGHT JOIN Countries AS c
ON c.CountryCode=mc.CountryCode
WHERE mc.CountryCode IS NULL
