SELECT *
FROM `movies`
ORDER BY `rating`
LIMIT 10;

SELECT *
FROM `movies`
WHERE `votes_nr` >=5000
ORDER BY `rating`
LIMIT 10;

SELECT *
FROM `movies`
WHERE `votes_nr` >=5000
AND `movie_type_id` = 1
ORDER BY `rating`
LIMIT 10;

SELECT *
FROM `movies`
WHERE `name` LIKE 'The Shawshank Redemption'

SELECT *
FROM `movies`
WHERE `id` LIKE 111161;

INSERT
INTO `movies`
(`name`)
VALUES
('Knock at the Cabin');

SELECT *
FROM `movies`
WHERE `name` LIKE 'Knock at the Cabin';

UPDATE `movies`
SET `year` = 2022
WHERE `id` = 5863127;

UPDATE `movies`
SET `movie_type_id` = 1,
`movie_status_id` = 11,
 `certification_id` = 0
WHERE `id` = 5863127;

SELECT *
FROM `movies`
LEFT JOIN `movie_statuses`
    ON `movies`.`movie_status_id` = `movie_statuses`.`id`
WHERE `movies`.`id` = 5863127;

SELECT `movies`.*, `movie_statuses`.`slug` AS `MSS`, `movie_types`.`slug` AS `MTS`, `movie_types`.`name`AS `MT`, `certifications`.`slug`
FROM `movies`
LEFT JOIN `movie_statuses`
    ON `movies`.`movie_status_id` = `movie_statuses`.`id`
LEFT JOIN `movie_types`
    ON `movies`.`movie_type_id` = `movie_types`.`id`
LEFT JOIN `certifications`
    ON `movies`.`certification_id` = `certifications`.`id`
WHERE `movies`.`id` = 5863127;

