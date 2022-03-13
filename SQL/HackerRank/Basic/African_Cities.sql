SELECT City.Name
FROM city
     INNER JOIN Country ON City.CountryCode = Country.Code
WHERE Continent = 'Africa'