-- Capstone Answers
-- Fill in each query below.

-- Q1: List every artist name and country, sorted alphabetically by name.
    select * from artists order by name Asc

-- Q2: How many albums are in the catalog?
    select count(*) from albums

-- Q3: Which genre has the most albums? (genre name and count)
    select genre, count(*) as album_count from albums group by genre order by album_count desc limit 1

-- Q4: Album titles released before 1970, with artist name.


-- Q5: Longest track — title, album title, duration as MM:SS.


-- Q6: Track count per album, sorted by count descending.


-- Q7: Artists with more than one album.


-- Q8: Tracks longer than 5 minutes — track title, album title, artist name.


-- Q9: Average track duration per genre (in seconds, rounded to 1 decimal).


-- Q10: Artist with the most total tracks — artist name and total count.


-- BONUS: Per-album summary (title, artist, genre, track count, total minutes).
