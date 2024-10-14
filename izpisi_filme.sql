SELECT naslov FROM film; 

'''izpise filme z najmanjso oceno'''
SELECT naslov, ROUND(ocena)
FROM film
WHERE ROUND(ocena) = (
    SELECT MIN(ROUND(ocena))
    FROM film
);
