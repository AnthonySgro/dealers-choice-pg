  --BELOW IS DATABASE SEED--
    DROP TABLE IF EXISTS all_values;
    DROP TABLE IF EXISTS athlete_freq;
    DROP TABLE IF EXISTS workouts;
    DROP TABLE IF EXISTS athletes;
    DROP TABLE IF EXISTS exercises;
    
    CREATE TABLE athletes (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL UNIQUE
    );
    
    INSERT INTO athletes (name) VALUES ('Lebron James');
    INSERT INTO athletes (name) VALUES ('Tom Brady');
    INSERT INTO athletes (name) VALUES ('Serena Williams');
    INSERT INTO athletes (name) VALUES ('Lindsey Vonn');
    
    CREATE TABLE exercises (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        category VARCHAR(100) NOT NULL
    );
    
    INSERT INTO exercises (name, category) VALUES ('Bench Press', 'Push');
    INSERT INTO exercises (name, category) VALUES ('Squat', 'Legs');
    INSERT INTO exercises (name, category) VALUES ('Deadlift', 'Pull');
    
    CREATE TABLE workouts (
        workout_id SERIAL PRIMARY KEY,
        athlete_id INTEGER REFERENCES athletes(id),
        exercise_id INTEGER REFERENCES exercises(id),
        date DATE NOT NULL
    );
    
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Squat'),  '2021-2-20');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Bench Press'),  '2021-2-21');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Deadlift'),  '2021-2-22');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Squat'),  '2021-2-23');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Bench Press'),  '2021-2-24');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Squat'),  '2021-2-25');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Deadlift'),  '2021-2-26');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lebron James'),(SELECT id from exercises where name='Squat'),  '2021-2-28');
    
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Bench Press'),  '2021-2-21');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Bench Press'),  '2021-2-22');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Squat'),  '2021-2-24');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Deadlift'),  '2021-2-25');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Bench Press'),  '2021-2-27');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Bench Press'),  '2021-2-28');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Tom Brady'),(SELECT id from exercises where name='Bench Press'),  '2021-3-1');
    
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-10');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Deadlift'),  '2021-2-12');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-13');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-14');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Deadlift'),  '2021-2-17');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Bench Press'),  '2021-2-19');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-20');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-22');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-24');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Deadlift'),  '2021-2-25');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Bench Press'),  '2021-2-27');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Squat'),  '2021-2-28');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Serena Williams'),(SELECT id from exercises where name='Deadlift'),  '2021-3-1');
    
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Squat'),  '2021-2-10');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Deadlift'),  '2021-2-12');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Squat'),  '2021-2-13');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Deadlift'),  '2021-2-14');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Bench Press'),  '2021-2-17');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Bench Press'),  '2021-2-19');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Deadlift'),  '2021-2-20');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Deadlift'),  '2021-2-22');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Squat'),  '2021-2-24');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Deadlift'),  '2021-2-25');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Bench Press'),  '2021-2-27');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Squat'),  '2021-2-28');
    INSERT INTO workouts (athlete_id, exercise_id, date) VALUES ((SELECT id from athletes where name='Lindsey Vonn'),(SELECT id from exercises where name='Deadlift'),  '2021-3-1');    
    
    CREATE TABLE athlete_freq
    AS 
    SELECT athlete, COUNT(*) AS number_of_workouts
    FROM (
        SELECT workouts.athlete_id AS athlete
        FROM workouts
    ) AS foo
    GROUP BY athlete
    ORDER BY athlete;

    CREATE TABLE athlete_type_freq
    AS
    SELECT athlete, category ,COUNT(*) AS number_of_workouts_by_category
    FROM (
        SELECT w.athlete_id AS athlete, e.category
        FROM workouts w
        join exercises e on e.id = w.exercise_id
    ) AS foo
    GROUP BY athlete, category
    ORDER BY athlete;

    select * 
    From crosstab (
        'SELECT athlete, category ,COUNT(*) AS nval
        FROM (
            SELECT w.athlete_id AS athlete, e.category
            FROM workouts w
            join exercises e on e.id = w.exercise_id
        ) AS foo
            GROUP BY athlete, category
        )
        where attribute = 

    ) as ct(athlete text, leg text, push text, pull text)

    CREATE TABLE all_values
    AS
    SELECT workouts.workout_id, workouts.athlete_id, 
    athletes.name AS athlete, exercises.name AS exercise, exercises.category, workouts.date
    FROM workouts
    JOIN exercises ON workouts.exercise_id = exercises.id
    JOIN athletes ON workouts.athlete_id = athletes.id;

    SELECT 