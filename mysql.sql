-- CREATE TABLE students(student_id INTEGER NOT NULL PRIMARY KEY, 
-- student_name TEXT NOT NULL, age INTEGER NOT NULL, gender TEXT NOT NULL, 
-- grade_level INTEGER NOT NULL, attendance INTEGER NOT NULL, gpa FLOAT NOT NULL); 

-- INSERT INTO students(student_id, student_name, age, gender,
-- grade_level, attendance, gpa)
-- VALUES (1, "Joe Miller", 17, "M", 11, 10, 3.4 );

-- I inserted the rest of the records
-- directly into mydb.db through the GUI.

-- Average GPA for all students
SELECT AVG(gpa) FROM students;

-- Students with perfect attendance
SELECT student_name, attendance 
FROM students
WHERE students.attendance = 10;

-- Total number of students
SELECT COUNT(*) FROM students;

-- Average GPA by grade level
SELECT grade_level, AVG(gpa) 
FROM students
GROUP BY grade_level
ORDER BY AVG(gpa) DESC;





