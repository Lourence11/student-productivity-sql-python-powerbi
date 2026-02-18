
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(20),
    academic_level VARCHAR(50),
    part_time_job VARCHAR(10)
);

CREATE TABLE study_behavior (
    student_id INT PRIMARY KEY,
    study_hours FLOAT,
    self_study_hours FLOAT,
    online_classes_hours FLOAT,
    upcoming_deadline VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE lifestyle (
    student_id INT PRIMARY KEY,
    sleep_hours FLOAT,
    social_media_hours FLOAT,
    gaming_hours FLOAT,
    screen_time_hours FLOAT,
    exercise_minutes INT,
    caffeine_intake_mg INT,
    internet_quality VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE performance (
    student_id INT PRIMARY KEY,
    productivity_score FLOAT,
    exam_score FLOAT,
    mental_health_score FLOAT,
    focus_index FLOAT,
    burnout_level FLOAT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
