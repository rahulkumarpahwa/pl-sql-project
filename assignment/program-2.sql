-- PL/SQL program to convert a temperature from Fahrenheit to Celsius:
DECLARE fahrenheit NUMBER := & input_fahrenheit;
celsius NUMBER;
BEGIN celsius := (fahrenheit - 32) * 5 / 9;
DBMS_OUTPUT.PUT_LINE(
    'Fahrenheit value: ' || fahrenheit || ' is equal to Celsius: ' || ROUND(celsius, 2)
);
END;
/