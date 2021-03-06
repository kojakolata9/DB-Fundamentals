SELECT computed.ContinentCode,computed.CurrencyCode,computed.CurrencyUsage FROM
(SELECT c.ContinentCode,
            c.CurrencyCode,
    	    COUNT(c.CurrencyCode) AS CurrencyUsage,
    	    DENSE_RANK() OVER 
(PARTITION BY c.ContinentCode ORDER BY COUNT(c.CurrencyCode) DESC) AS CurrencyRank
FROM Countries AS c
GROUP BY c.ContinentCode, c.CurrencyCode) AS computed
WHERE computed.CurrencyRank=1 AND computed.CurrencyUsage>1
ORDER BY computed.ContinentCode