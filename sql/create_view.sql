CREATE VIEW student_full_data AS
SELECT 
    s.student_id,
    s.agestudent_full_data,
    s.gender,
    s.academic_level,
    s.part_time_job,
    sb.study_hours,
    sb.self_study_hours,
    sb.online_classes_hours,
    sb.upcoming_deadline,
    l.sleep_hours,
    l.social_media_hours,
    l.gaming_hours,
    l.screen_time_hours,
    l.exercise_minutes,
    l.caffeine_intake_mg,
    l.internet_quality,
    p.productivity_score,
    p.exam_score,
    p.mental_health_score,
    p.focus_index,
    p.burnout_level
FROM students s
JOIN study_behavior sb ON s.student_id = sb.student_id
JOIN lifestyle l ON s.student_id = l.student_id
JOIN performance p ON s.student_id = p.student_id;

SELECT COUNT(*) FROM student_full_data;

