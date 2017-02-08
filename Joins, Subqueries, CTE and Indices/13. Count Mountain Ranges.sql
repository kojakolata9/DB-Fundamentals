SELECT mc.CountryCode,COUNT(m.Id) FROM Mountains AS m
JOIN MountainsCountries AS mc
ON mc.MountainId=m.Id
GROUP BY mc.CountryCode
HAVING mc.CountryCode IN('BG','RU','US')
