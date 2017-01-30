SELECT TownId,Name FROM Towns
WHERE Left(Name,1)!='r' AND Left(Name,1)!='b' AND Left(Name,1)!='d'
ORDER BY Name