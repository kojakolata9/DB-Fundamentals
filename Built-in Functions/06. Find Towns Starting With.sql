SELECT TownId,Name FROM Towns
WHERE Left(Name,1)='m' OR Left(Name,1)='k' OR Left(Name,1)='b' OR Left(Name,1)='e'
ORDER BY Name