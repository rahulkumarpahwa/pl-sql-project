-- PL/SQL program to find the maximum of three numbers using an IF-ELSE statement:
DECLARE
    num1 NUMBER := 40; -- First number
    num2 NUMBER := 50; -- Second number
    num3 NUMBER := 10; -- Third number
    largest NUMBER;    -- Variable to store the largest number
BEGIN
    IF (num1 >= num2) AND (num1 >= num3) THEN
        largest := num1;
    ELSIF (num2 >= num1) AND (num2 >= num3) THEN
        largest := num2;
    ELSE
        largest := num3;
    END IF;
    DBMS_OUTPUT.PUT_LINE('The largest number is: ' || largest);
END;
/
