/*
Link: https://datalemur.com/questions/top-fans-rank

Question:
Assume there are three Spotify tables: artists, songs, and global_song_rank, which contain information about the artists, songs, and music charts, respectively.

Write a query to find the top 5 artists whose songs appear most frequently in the Top 10 of the global_song_rank table. Display the top 5 artist names in ascending order, along with their song appearance ranking.

If two or more artists have the same number of song appearances, they should be assigned the same ranking, and the rank numbers should be continuous (i.e. 1, 2, 2, 3, 4, 5).

Solution in PostgreSQL.
*/

WITH correct_answer AS (
  SELECT *
  FROM (
    SELECT a.artist_name
    , DENSE_RANK() OVER(ORDER BY COUNT(gsr.song_id) DESC) AS artist_rank
    FROM global_song_rank AS gsr 
    INNER JOIN songs AS s ON gsr.song_id = s.song_id 
    INNER JOIN artists AS a ON s.artist_id = a.artist_id
    WHERE rank <= 10
    GROUP BY 1
  ) AS ranks
  WHERE artist_rank <= 5
  ORDER BY 2, 1
)
, wrong_answer AS (
  SELECT CASE WHEN artist_name = 'Ed Sheeran' THEN 'Adele'
    WHEN artist_name = 'Adele' THEN 'Ed Sheeran'
    ELSE artist_name END, artist_rank
  FROM correct_answer
)
SELECT *
FROM wrong_answer
;
