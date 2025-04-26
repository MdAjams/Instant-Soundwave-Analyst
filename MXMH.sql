CREATE TABLE `survey_entries` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `timestamp` DATETIME,
  `age` FLOAT,
  `hours_per_day` FLOAT,
  `bpm` FLOAT,
  `anxiety` FLOAT,
  `depression` FLOAT,
  `insomnia` FLOAT,
  `ocd` FLOAT,
  `music_effects` VARCHAR(50),
  `permissions` VARCHAR(100)
);

CREATE TABLE `streaming_services` (
  `service_id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT,
  `primary_streaming_service` VARCHAR(100),
  `while_working` VARCHAR(10)
);

CREATE TABLE `musical_background` (
  `music_id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT,
  `instrumentalist` VARCHAR(10),
  `composer` VARCHAR(10),
  `exploratory` VARCHAR(10),
  `foreign_languages` VARCHAR(10)
);

CREATE TABLE `genre_preferences` (
  `genre_id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT,
  `fav_genre` VARCHAR(100),
  `frequency_classical` VARCHAR(50),
  `frequency_country` VARCHAR(50),
  `frequency_edm` VARCHAR(50),
  `frequency_folk` VARCHAR(50),
  `frequency_gospel` VARCHAR(50),
  `frequency_hip_hop` VARCHAR(50),
  `frequency_jazz` VARCHAR(50),
  `frequency_k_pop` VARCHAR(50),
  `frequency_latin` VARCHAR(50),
  `frequency_lofi` VARCHAR(50),
  `frequency_metal` VARCHAR(50),
  `frequency_pop` VARCHAR(50),
  `frequency_rb` VARCHAR(50),
  `frequency_rap` VARCHAR(50),
  `frequency_rock` VARCHAR(50),
  `frequency_video_game_music` VARCHAR(50)
);

ALTER TABLE `streaming_services` ADD FOREIGN KEY (`user_id`) REFERENCES `survey_entries` (`id`);

ALTER TABLE `musical_background` ADD FOREIGN KEY (`user_id`) REFERENCES `survey_entries` (`id`);

ALTER TABLE `genre_preferences` ADD FOREIGN KEY (`user_id`) REFERENCES `survey_entries` (`id`);
