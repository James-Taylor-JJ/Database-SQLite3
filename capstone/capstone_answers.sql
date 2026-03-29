-- Capstone Answers
-- Fill in each query below.

-- Q1: List every artist name and country, sorted alphabetically by name.
    select * from artists order by name Asc

-- Q2: How many albums are in the catalog?
    select count(*) from albums

-- Q3: Which genre has the most albums? (genre name and count)
    SELECT genres.name, COUNT (*) AS album_count FROM albums JOIN genres ON albums.genre_id = genres.id GROUP BY genres.name ORDER BY album_count DESC LIMIT 1;

-- Q4: Album titles released before 1970, with artist name.
    SELECT albums.title, artists.name FROM albums JOIN artists ON albums.artist_id = artists.id WHERE year_released < 1970

-- Q5: Longest track — title, album title, duration as MM:SS.
    SELECT tracks.title, albums.title, (tracks.duration_sec / 60) || ':' || (tracks.duration_sec % 60) AS duration FROM tracks JOIN albums ON tracks.album_id = albums.id ORDER BY duration DESC LIMIT 1;

-- Q6: Track count per album, sorted by count descending.
    SELECT albums.title, COUNT(*) AS track_count FROM tracks JOIN albums ON tracks.album_id = albums.id GROUP BY album_id ORDER BY track_count DESC
    SELECT albums.title, COUNT(tracks.id) AS track_count FROM albums JOIN tracks ON albums.id = tracks.album_id GROUP BY albums.title ORDER BY track_count DESC;
-- Q7: Artists with more than one album.
    SELECT artists.name, COUNT(albums.id) AS album_count FROM artists JOIN albums ON artists.id = albums.artist_id GROUP BY artists.name HAVING album_count > 1;

-- Q8: Tracks longer than 5 minutes — track title, album title, artist name.
    SELECT tracks.title, albums.title, artists.name FROM tracks JOIN albums ON tracks.album_id = albums.id JOIN artists ON albums.artist_id = artists.id WHERE tracks.duration_sec > 300;

-- Q9: Average track duration per genre (in seconds, rounded to 1 decimal).


-- Q10: Artist with the most total tracks — artist name and total count.


-- BONUS: Per-album summary (title, artist, genre, track count, total minutes).
    