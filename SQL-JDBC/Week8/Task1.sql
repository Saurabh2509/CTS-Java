Author ~ Saurabh Kumar
@Copyright 2021

#Problem Title: Subject with Staff Details
#Problem Statement: Write a query to display the subjectname, code and staff name who handles that subject, ordered by code in ascending order.

Select Subject_Name,Subject_Code,Staff_Name From Subject
Inner Join Staff on Subject.Staff_ID = Staff.Staff_ID
order by Subject_Code Asc;  


#Problem Title: Maximum mark in Subject with Staff name
#Problem Statement: Write a query to display list of staff name, subject name handled and maximum mark scored inthat subject.
#Give an alias to the maximum mark as max_mark. Sort the result based on maximum mark in descending

Select st.staff_name, s.subject_name, max(m.value) as max_marks From staff st 
Join subject s
On st.staff_id = s.staff_id
Join mark m 
On m.subject_id = s.subject_id
Group by st.staff_name, s.subject_name, st.staff_id

