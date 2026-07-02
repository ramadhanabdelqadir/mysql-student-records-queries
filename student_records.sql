#Create the database 
CREATE DATABASE students;

#use the database
USE students;

#display all records
SELECT * FROM students_records

#display only the student id course taken
SELECT stud_id, course_taken, final_exam
FROM students_records;

#display all unique course offered
SELECT DISTINCT course_taken
FROM students_records;

#display the gender groups the instution
SELECT DISTINCT sex
FROM students_records;

#retrieve students whose final exam score is greater than 80
SELECT * FROM students_records
WHERE final_exam > 80;

#Display students attendance percentage is less than 75%
SELECT * FROM students_records 
WHERE att_perc < 75;

#Display students in year 3
SELECT * FROM students_records
WHERE yr_of_study = 3;

#displaying only female(female,F,Female)
SELECT *FROM students_records
WHERE  sex ='female'
OR sex ='F'
OR sex = 'Female';

#Retriving female students
SELECT * FROM students_records
WHERE sex LIKE 'F%';#consider the sex field and pick all the records where sex began with the letter 'f'

#Retriving male students
SELECT * FROM students_records
WHERE sex LIKE 'M%';

#students who have done computer science and Data science
 SELECT * FROM students_records
 WHERE course_taken LIKE '%e';
 
 #Retrieve students aged between 20 and 25 years
 SELECT * FROM students_records
 WHERE age_yrs > 20
 AND age_yrs< 25;
 
 #displaying students whose family income exceeds 60000
 SELECT * FROM students_records
 WHERE  fam_income_kes >60000;
 
 #Displaying the top 15 students based on assignment score 
 SELECT * FROM students_records
 ORDER BY assgn_score DESC
 LIMIT 15;
 
 #Displaying the bottom 5 students based on final exam
 SELECT * FROM students_records
 ORDER BY final_exam ASC
 LIMIT 5;
 
 #Find the average final examination score
 SELECT AVG(final_exam) FROM students_records;
 
 #highest assignment score
 SELECT MAX(assgn_score) FROM students_records;
 
 #lowest attendance score
  SELECT MIN(att_perc) FROM students_records;
  
  #Find the Average final examinations score for every course
 SELECT course_taken, AVG(final_exam) AS Average_Final_Exam_Score 
 FROM students_records
 GROUP BY course_taken;
 
#Avverage attendance percentagevfor each year of study
 SELECT yr_of_study, AVG (att_perc) AS Mean_attendance_percentage
 FROM students_records
 GROUP BY yr_of_study;
 
 #display  course whose average final examination score exceeds 70
 SELECT course_taken, AVG(final_exam)
 FROM students_records
 GROUP BY course_taken
 HAVING AVG(final_exam) > 70;
 