SELECT COUNT(*) FROM student_raw;

INSERT INTO students (student_id, age, gender, academic_level, part_time_job)
SELECT 
    student_id,
    age,
    gender,
    academic_level,
    part_time_job
FROM student_raw;

SELECT COUNT(*) FROM students;

INSERT INTO study_behavior (student_id, study_hours, self_study_hours, online_classes_hours, upcoming_deadline)
SELECT 
    student_id,
    study_hours,
    self_study_hours,
    online_classes_hours,
    upcoming_deadline
FROM student_raw;

SELECT COUNT(*) FROM study_behavior;

INSERT INTO lifestyle (student_id, sleep_hours, social_media_hours, gaming_hours, screen_time_hours, exercise_minutes, caffeine_intake_mg, internet_quality)
SELECT 
    student_id,
    sleep_hours,
    social_media_hours,
    gaming_hours,
    screen_time_hours,
    exercise_minutes,
    caffeine_intake_mg,
    internet_quality
FROM student_raw;

SELECT COUNT(*) FROM lifestyle;

INSERT INTO performance (student_id, productivity_score, exam_score, mental_health_score, focus_index, burnout_level)
SELECT 
    student_id,
    productivity_score,
    exam_score,
    mental_health_score,
    focus_index,
    burnout_level
FROM student_raw;

SELECT COUNT(*) FROM performance;
