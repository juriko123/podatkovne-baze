-- '''izpise vse filme'''
-- SELECT naslov FROM film; 

-- '''izpise filme z najmanjso oceno'''
-- SELECT naslov, ROUND(ocena)
-- FROM film
-- WHERE ROUND(ocena) = (
--     SELECT MIN(ROUND(ocena))
--     FROM film
-- );

#zdruzevanje

-- Povprečna ocena filmov iz leta 2000
SELECT AVG(ocena) FROM filmi
WHERE leto = 2000;

-- Povprečna ocena filmov za vsako leto
SELECT leto, AVG(ocena) FROM filmi
GROUP BY leto;

-- Povprečna ocena filmov za vsako leto, ko je bilo vsaj 5 filmov
SELECT leto, AVG(ocena) AS povprecna_ocena, COUNT(*) AS st_filmov
FROM filmi
GROUP BY leto
HAVING st_filmov > 5;
 