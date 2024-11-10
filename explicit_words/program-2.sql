-- a PL/SQL program that prints the names and IDs of students who have similar marks. This program uses a cursor to fetch the student details and compares their marks:

DECLARE
  CURSOR student_cursor IS
    SELECT student_id, student_name, marks
    FROM students;
  
  TYPE student_record IS RECORD (
    student_id students.student_id%TYPE,
    student_name students.student_name%TYPE,
    marks students.marks%TYPE
  );
  
  student1 student_record;
  student2 student_record;
  
BEGIN
  OPEN student_cursor;
  LOOP
    FETCH student_cursor INTO student1;
    EXIT WHEN student_cursor%NOTFOUND;
    
    -- Nested loop to compare with other students
    FOR student2 IN (SELECT student_id, student_name, marks FROM students WHERE student_id != student1.student_id) LOOP
      IF student1.marks = student2.marks THEN
        DBMS_OUTPUT.PUT_LINE('Student 1: ' || student1.student_name || ' (ID: ' || student1.student_id || ')');
        DBMS_OUTPUT.PUT_LINE('Student 2: ' || student2.student_name || ' (ID: ' || student2.student_id || ')');
        DBMS_OUTPUT.PUT_LINE('Marks: ' || student1.marks);
        DBMS_OUTPUT.PUT_LINE('-------------------------');
      END IF;
    END LOOP;
  END LOOP;
  CLOSE student_cursor;
END;
/