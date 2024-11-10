-- a PL/SQL program that fetches the student name and ID for students aged 21. If no student with age 21 exists, it raises a custom exception:
DECLARE -- Declare variables to hold student details
    v_student_id students.id %TYPE;
v_student_name students.name %TYPE;
-- Declare a custom exception
e_no_student_found EXCEPTION;
BEGIN -- Attempt to fetch student details
SELECT id,
    name INTO v_student_id,
    v_student_name
FROM students
WHERE age = 21;
-- If the above query does not raise an exception, print the student details
DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student_id);
DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_student_name);
EXCEPTION -- Handle the case where no student is found
WHEN NO_DATA_FOUND THEN RAISE e_no_student_found;
-- Handle the custom exception
WHEN e_no_student_found THEN DBMS_OUTPUT.PUT_LINE('No student with age 21 found.');
END;
/