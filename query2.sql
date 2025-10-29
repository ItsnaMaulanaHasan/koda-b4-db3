-- Melakukan join directors dan genres ke table movies, dan limit keluaran sebanyak 50
SELECT
    movies.id,
    movies.name as movie_name,
    movies.year as movie_year,
    movies.rankscore as movie_rankscore,
    directors.first_name as director_firstName,
    directors.last_name as director_lastName,
    movies_genres.genre as movie_genre
FROM
    movies
    JOIN movies_directors on movies_directors.movie_id = movies.id
    JOIN directors on directors.id = movies_directors.director_id
    JOIN movies_genres ON movies_genres.movie_id = movies.id
LIMIT 50

-- Melakukan join movies dan roles berdasarkan table actors
SELECT
    actors.first_name as actor_firstName,
    actors.last_name as actor_lastName,
    actors.gender as actor_gender,
    roles.role as actor_role,
    movies.name as actor_movie
FROM actors
    JOIN roles ON roles.actor_id = actors.id
    JOIN movies ON movies.id = roles.movie_id