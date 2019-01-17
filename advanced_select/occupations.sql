-- The output column headers should be Doctor, Professor, Singer, and Actor, 
-- respectively. Print NULL when there are no more names corresponding to
-- an occupation.

-- 2. change format to rank, Doctor, Professor, Singer, Actor
SELECT
MIN(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor,
MIN(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor,
MIN(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer,
MIN(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor
FROM (

    -- 1. Create a ranking system and the order as Occupation, Name, Rank
    SELECT a.Occupation, a.Name,
        (SELECT COUNT(*) 
            FROM Occupations AS b
            WHERE a.Occupation = b.Occupation AND a.Name > b.Name) AS rank
    FROM Occupations AS a
) AS c
-- 3. Display all of them together ranked in order
GROUP BY c.rank;