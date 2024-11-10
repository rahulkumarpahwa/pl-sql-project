-- a simple PL/SQL program to reverse a string:
DECLARE input_string VARCHAR2(100);
reversed_string VARCHAR2(100) := '';
BEGIN -- Prompt the user for input
input_string := '&input_string';
-- Reverse the string
FOR i IN REVERSE 1..LENGTH(input_string) LOOP reversed_string := reversed_string || SUBSTR(input_string, i, 1);
END LOOP;
-- Display the reversed string
DBMS_OUTPUT.PUT_LINE('Reversed string: ' || reversed_string);
END;
/