-- A PL/SQL program to increase the marks of the students by 30% whose age <22  and student ID begin with S.
DECLARE
  CURSOR student_cur IS
    SELECT student_id, marks
    FROM students
    WHERE age < 22 AND student_id LIKE 'S%';

  v_student_id  students.student_id%TYPE;
  v_marks       students.marks%TYPE;
  v_increased_marks students.marks%TYPE;

BEGIN
  OPEN student_cur;

  LOOP
    FETCH student_cur INTO v_student_id, v_marks;
    EXIT WHEN student_cur%NOTFOUND;

    v_increased_marks := v_marks + (v_marks * 0.3);

    UPDATE students
    SET marks = v_increased_marks
    WHERE student_id = v_student_id;
  END LOOP;

  CLOSE student_cur;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Marks increased for eligible students.');
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/