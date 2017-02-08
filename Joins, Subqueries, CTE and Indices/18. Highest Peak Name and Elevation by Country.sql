SELECT TOP(5) computed.Country,
CASE
	WHEN computed.HighestPeakName IS NULL THEN '(no highest peak)'
	ELSE computed.HighestPeakName
END AS HighestPeakName,
CASE
	WHEN computed.HighestPeakElevation IS NULL THEN 0
	ELSE computed.HighestPeakElevation
END AS HighestPeakElevation,
CASE
	WHEN computed.Mountain IS NULL THEN '(no mountain)'
	ELSE computed.Mountain
END AS Mountain
 FROM (SELECT c.CountryName AS Country,p.PeakName AS HighestPeakName,
p.Elevation AS HighestPeakElevation,m.MountainRange AS Mountain,
DENSE_RANK() OVER 
(PARTITION BY c.CountryName ORDER BY p.Elevation DESC) AS PeakRank
FROM Countries AS c
LEFT JOIN MountainsCountries AS mc
ON c.CountryCode=mc.CountryCode
LEFT JOIN Mountains AS m
ON m.Id=mc.MountainId
LEFT JOIN Peaks AS p
On p.MountainId=m.Id
) AS computed
WHERE computed.PeakRank=1
ORDER BY computed.Country,HighestPeakName
