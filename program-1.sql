-- a PL/SQL program to find and print the prime numbers among the first 150 numbers
DECLARE
    num NUMBER;
    i NUMBER;
    flag BOOLEAN;
BEGIN
    FOR num IN 2..150 LOOP
        flag := TRUE;
        FOR i IN 2..TRUNC(SQRT(num)) LOOP
            IF MOD(num, i) = 0 THEN
                flag := FALSE;
                EXIT;
            END IF;
        END LOOP;
        IF flag THEN
            DBMS_OUTPUT.PUT_LINE(num || ' is a prime number');
        END IF;
    END LOOP;
END;
/
