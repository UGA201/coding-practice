SELECT Country.Continent, FLOOR(AVG(City.population))
FROM City 
    JOIN Country on Country.Code = City.CountryCode
GROUP BY Country.Continent