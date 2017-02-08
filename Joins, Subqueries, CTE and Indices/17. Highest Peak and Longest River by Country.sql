SELECT TOP(5) c.CountryName,MAX(p.Elevation),MAX(r.Length) FROM Peaks AS p
JOIN Mountains AS m
ON p.MountainId=m.Id
RIGHT JOIN MountainsCountries AS mc
ON mc.MountainId=m.Id
CROSS JOIN Rivers AS r
RIGHT JOIN CountriesRivers AS cr
ON cr.RiverId=r.Id
RIGHT JOIN Countries AS c
ON c.CountryCode=mc.CountryCode
WHERE mc.CountryCode=cr.CountryCode
GROUP BY mc.CountryCode,c.CountryName
ORDER BY MAX(p.Elevation) DESC,MAX(r.Length) DESC,c.CountryName

