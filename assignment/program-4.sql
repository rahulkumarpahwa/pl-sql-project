-- a PL/SQL program to generate the Fibonacci series up to a specified number of terms:
DECLARE a NUMBER := 0;
b NUMBER := 1;
temp NUMBER;
n NUMBER := 10;
-- You can change this value to generate more or fewer terms
i NUMBER;
BEGIN DBMS_OUTPUT.PUT_LINE('Fibonacci series:');
DBMS_OUTPUT.PUT_LINE(a);
DBMS_OUTPUT.PUT_LINE(b);
FOR i IN 3..n LOOP temp := a + b;
a := b;
b := temp;
DBMS_OUTPUT.PUT_LINE(temp);
END LOOP;
END;
/