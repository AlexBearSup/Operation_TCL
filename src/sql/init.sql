CREATE TABLE Homework (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description TEXT
);

CREATE TABLE lesson (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    updatedAt DATE,
    homework_id INTEGER REFERENCES Homework(id) ON DELETE CASCADE
);

CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    updatedAt DATE
);

CREATE TABLE schedule_lesson (
    schedule_id INTEGER REFERENCES Schedule(id),
    lesson_id INTEGER REFERENCES Lesson(id),
    PRIMARY KEY (schedule_id, lesson_id)
);