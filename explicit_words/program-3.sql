--  a PL/SQL program that lists the details of students whose age is between 21 and 25:
DECLARE CURSOR student_cursor IS
SELECT student_id,
    name,
    age
FROM students
WHERE age BETWEEN 21 AND 25;
BEGIN FOR student_record IN student_cursor LOOP DBMS_OUTPUT.PUT_LINE(
    'ID: ' || student_record.student_id || ', Name: ' || student_record.name || ', Age: ' || student_record.age
);
END LOOP;
END;
/