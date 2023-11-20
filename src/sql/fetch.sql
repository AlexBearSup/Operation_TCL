SELECT * FROM homework;


SELECT lesson.*, homework.name AS homework_name, homework.description AS homework_description
FROM lesson
JOIN homework ON lesson.homework_id = homework.id;


SELECT lesson.*, homework.name AS homework_name, homework.description AS homework_description
FROM lesson
JOIN homework ON lesson.homework_id = homework.id ORDER BY lesson.updatedAt;



SELECT schedule.*, lesson.name AS lesson_name, lesson.updatedAt AS lesson_updateAt, lesson.homework_id AS homework_id
FROM schedule
JOIN schedule_lesson ON schedule.id = schedule_lesson.schedule_id
JOIN lesson ON schedule_lesson.lesson_id = lesson.id;


SELECT schedule.id AS schedule_id, schedule.name AS schedule_name, COUNT(Lesson.id) AS lesson_count
FROM schedule
JOIN schedule_lesson ON schedule.id = schedule_lesson.schedule_id
JOIN lesson ON schedule_lesson.lesson_id = lesson.id
GROUP BY schedule.id ORDER BY schedule.id ;