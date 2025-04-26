USE spotify_app;

# Average Daily Music Hours by Streaming Service
SELECT primary_streaming_service, AVG(hours_per_day) AS avg_hours
FROM spotify_app
GROUP BY primary_streaming_service
ORDER BY avg_hours DESC;

# Most Popular Favorite Genres
SELECT fav_genre, COUNT(*) AS total_fans
FROM spotify_app
GROUP BY fav_genre
ORDER BY total_fans DESC;

# Average Anxiety Level by Genre
SELECT fav_genre, AVG(anxiety) AS avg_anxiety
FROM spotify_app
GROUP BY fav_genre
ORDER BY avg_anxiety DESC;

# Insomnia Level by Streaming Service
SELECT primary_streaming_service, AVG(insomnia) AS avg_insomnia
FROM spotify_app
GROUP BY primary_streaming_service
ORDER BY avg_insomnia DESC;

# OCD Average by Genre
SELECT fav_genre, AVG(ocd) AS avg_ocd
FROM spotify_app
GROUP BY fav_genre
ORDER BY avg_ocd DESC;

# Listening Habits While Working
SELECT while_working, COUNT(*) AS count_users
FROM spotify_app
GROUP BY while_working;

# Top BPM Genres
SELECT fav_genre, AVG(bpm) AS avg_bpm
FROM spotify_app
GROUP BY fav_genre
ORDER BY avg_bpm DESC;

#  Survey Entries Over Time
SELECT DATE(timestamp) AS date, COUNT(*) AS entries
FROM spotify_app
GROUP BY DATE(timestamp)
ORDER BY date;

# Music Effect on Mood
SELECT music_effects, COUNT(*) AS count_effects
FROM spotify_app
GROUP BY music_effects;

# Favorite Genre Among Instrumentalists
SELECT fav_genre, COUNT(*) AS instrumentalist_count
FROM spotify_app
WHERE instrumentalist = 'Yes'
GROUP BY fav_genre
ORDER BY instrumentalist_count DESC;

# Exploratory Listeners Genre Choice
SELECT fav_genre, COUNT(*) AS explorer_count
FROM spotify_app
WHERE exploratory = 'Yes'
GROUP BY fav_genre
ORDER BY explorer_count DESC;

# Foreign Language Listeners' Top Genre
SELECT fav_genre, COUNT(*) AS foreign_lang_listeners
FROM spotify_app
WHERE foreign_languages = 'Yes'
GROUP BY fav_genre
ORDER BY foreign_lang_listeners DESC;

#  High Depression vs Low Depression Listeners
SELECT CASE 
           WHEN depression >= 7 THEN 'High Depression'
           ELSE 'Low Depression'
       END AS depression_category, 
       COUNT(*) AS user_count
FROM spotify_app
GROUP BY depression_category;


# Top Genres for "Very Frequent" Rock Listeners
SELECT fav_genre, COUNT(*) AS rock_heads
FROM spotify_app
WHERE frequency_rock = 'Very frequently'
GROUP BY fav_genre
ORDER BY rock_heads DESC;


# Gamers' Favorite Genre
SELECT fav_genre, COUNT(*) AS gamer_fans
FROM spotify_app
WHERE frequency_video_game_music = 'Very frequently'
GROUP BY fav_genre
ORDER BY gamer_fans DESC;



