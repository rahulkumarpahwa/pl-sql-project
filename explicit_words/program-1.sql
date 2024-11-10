-- a PL/SQL program that prints the names and IDs of students whose marks are between 16 and 80:
DECLARE
  CURSOR student_cursor IS
    SELECT student_id, student_name
    FROM students
    WHERE marks BETWEEN 16 AND 80;
BEGIN
  FOR student_record IN student_cursor LOOP
    DBMS_OUTPUT.PUT_LINE('ID: ' || student_record.student_id || ', Name: ' || student_record.student_name);
  END LOOP;
END;
/
