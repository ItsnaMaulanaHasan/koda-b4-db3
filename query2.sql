-- Melakukan join directors dan genres ke table movies, dan limit keluaran sebanyak 50
SELECT
    movies.id,
    movies.name AS movie_name,
    movies.year AS movie_year,
    movies.rankscore AS movie_rankscore,
    directors.first_name AS director_firstName,
    directors.last_name AS director_lastName,
    movies_genres.genre AS movie_genre
FROM
    movies
    JOIN movies_directors ON movies_directors.movie_id = movies.id
    JOIN directors ON directors.id = movies_directors.director_id
    JOIN movies_genres ON movies_genres.movie_id = movies.id
LIMIT 50

-- Melakukan join movies dan roles berdasarkan table actors
SELECT
    actors.first_name AS actor_firstName,
    actors.last_name AS actor_lastName,
    actors.gender AS actor_gender,
    roles.role AS actor_role,
    movies.name AS actor_movie
FROM actors
    JOIN roles ON roles.actor_id = actors.id
    JOIN movies ON movies.id = roles.movie_id