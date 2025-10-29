-- Mencari moive dengan tahun liris lebih dari tahun 2000
SELECT * FROM movies WHERE year > 2000

-- Mencari actors dengan akhiran 's'
SELECT * FROM actors WHERE last_name LIKE '%s'

-- Mencari movie dengan rating diantara 5-7 dan tahun liris 2004 sampai 2006
SELECT *
FROM movies
WHERE
    rankscore BETWEEN 5 AND 7
    AND year BETWEEN 2004 AND 2006

-- Menghitung jumlah movie dengan rating 6
SELECT count(*) AS total_movies FROM movies WHERE rankscore = 6