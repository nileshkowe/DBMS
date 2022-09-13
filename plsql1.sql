/*
DECLARE
   per number(3):=35;
BEGIN
   IF(per>=75)THEN
	dbms_output.put_line('Distinction');
   ELSIF(per>=60)THEN
	dbms_output.put_line('First class');
   ELSIF(per>=50)THEN
	dbms_output.put_line('Second class');
   ELSIF(per>=40)THEN
	dbms_output.put_line('Third class');
   ELSE
	dbms_output.put_line('Fail');
END IF;
END;
*/

DECLARE
   num number:=0;
   sum1 number:=0;
BEGIN
   LOOP
	sum1:= sum1+num;
	num:= num+1;
	EXIT WHEN(num>50);
   END LOOP;
	dbms_output.put_line('sum is='||sum1);
END;
/
