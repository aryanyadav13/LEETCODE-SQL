
-- SELECT
--     S.student_id
--     ,S.student_name
--     ,SU.subject_name
--     ,COUNT(E.student_id) attended_exams
-- FROM Students S
-- CROSS JOIN Subjects SU
-- LEFT JOIN Examinations E
--     ON S.student_id = E.student_id
--     AND SU.subject_name = E.subject_name


select s.student_id ,s.student_name,sn.subject_name,count(e.subject_name) as attended_exams
from students s 
cross join subjects sn
left join examinations e 
on s.student_id = e.student_id 
and sn.subject_name = e.subject_name

GROUP BY S.student_id, S.student_name, Sn.subject_name
ORDER BY S.student_id, S.student_name, Sn.subject_name
;









-- GROUP BY S.student_id, S.student_name, SU.subject_name
-- ORDER BY S.student_id, S.student_name, SU.subject_name
;