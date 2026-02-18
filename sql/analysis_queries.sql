-- =========================================================
-- Average Exam Score by Academic Level
-- Purpose:
-- To determine which academic level performs best on exams.
-- We join students and performance tables using student_id.
-- Then we group by academic_level and calculate average exam score.
-- =========================================================

SELECT 
    s.academic_level,
    ROUND(AVG(p.exam_score), 2) AS avg_exam_score
FROM students s
JOIN performance p ON s.student_id = p.student_id
GROUP BY s.academic_level
ORDER BY avg_exam_score DESC;

-- =========================================================
-- Sleep Hours vs Exam Score
-- To analyze whether sleep duration impacts exam performance.
-- After that we calculate the average exam score per sleep group.
-- =========================================================

SELECT 
    ROUND(l.sleep_hours, 0) AS sleep_group,
    ROUND(AVG(p.exam_score), 2) AS avg_exam_score
FROM lifestyle l
JOIN performance p ON l.student_id = p.student_id
GROUP BY sleep_group
ORDER BY sleep_group;

-- =========================================================
-- Burnout Level vs Productivity
-- To examine how burnout affects student productivity.
-- Then calculate average productivity for each group.
-- =========================================================

SELECT 
    ROUND(p.burnout_level, 0) AS burnout_group,
    ROUND(AVG(p.productivity_score), 2) AS avg_productivity
FROM performance p
GROUP BY burnout_group
ORDER BY burnout_group;

-- =========================================================
-- Social Media Usage vs Exam Score
-- To evaluate if higher social media usage affects exam scores.
-- We group students by rounded social media hours.
-- Then compute average exam score per group.
-- =========================================================

SELECT 
    ROUND(l.social_media_hours, 0) AS social_media_group,
    ROUND(AVG(p.exam_score), 2) AS avg_exam_score
FROM lifestyle l
JOIN performance p ON l.student_id = p.student_id
GROUP BY social_media_group
ORDER BY social_media_group;

-- =========================================================
-- Internet Quality Impact on Performance
-- To analyze whether internet quality affects exam scores
-- and productivity levels.
-- =========================================================

SELECT 
    l.internet_quality,
    ROUND(AVG(p.exam_score), 2) AS avg_exam_score,
    ROUND(AVG(p.productivity_score), 2) AS avg_productivity
FROM lifestyle l
JOIN performance p ON l.student_id = p.student_id
GROUP BY l.internet_quality
ORDER BY avg_exam_score DESC;

-- =========================================================
-- Part-Time Job Impact on Performance
-- Purpose:
-- To determine whether having a part-time job affects
-- exam scores and productivity.
-- =========================================================

SELECT 
    s.part_time_job,
    ROUND(AVG(p.exam_score), 2) AS avg_exam_score,
    ROUND(AVG(p.productivity_score), 2) AS avg_productivity
FROM students s
JOIN performance p ON s.student_id = p.student_id
GROUP BY s.part_time_job;

-- =========================================================
-- Rank Students by Exam Score
-- This helps identify top performers per group.
-- =========================================================

SELECT 
    s.student_id,
    s.academic_level,
    p.exam_score,
    RANK() OVER (
        PARTITION BY s.academic_level
        ORDER BY p.exam_score DESC
    ) AS rank_within_level
FROM students s
JOIN performance p ON s.student_id = p.student_id
ORDER BY s.academic_level, rank_within_level;

-- =========================================================
-- Compare Student Score to Academic Level Average
-- To compare each student's exam score with
-- the average exam score of their academic level.
-- =========================================================

SELECT 
    s.student_id,
    s.academic_level,
    p.exam_score,
    ROUND(
        AVG(p.exam_score) OVER (PARTITION BY s.academic_level),
        2
    ) AS level_avg_exam_score,
    ROUND(
        p.exam_score - 
        AVG(p.exam_score) OVER (PARTITION BY s.academic_level),
        2
    ) AS difference_from_level_avg
FROM students s
JOIN performance p ON s.student_id = p.student_id
ORDER BY s.academic_level, p.exam_score DESC;
