# Write your MySQL query statement below
 select s.student_id, s.student_name ,j.subject_name, count(e.subject_name) as attended_exams
 from students s
 cross join subjects j 
 left join examinations e
 on s.student_id = e.student_id
 and j.subject_name = e.subject_name
 group by s.student_id, s.student_name, j.subject_name
 order by student_id, subject_name

 