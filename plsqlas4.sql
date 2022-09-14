/*
create table A_circle (rad integer, area float);
select * from A_circle;
*/


-- Using While loop
DECLARE
  area number(5,2);
  rad number:=5;

BEGIN
  WHILE rad<=9
  LOOP
   area:=3.14*rad*rad;
   insert into A_circle values (rad, area);
   rad:=rad+1;
  END LOOP;
END;


-- Using For loop
DECLARE
  area number(5,2);
  rad number:=5;

BEGIN 
  FOR rad IN 5..9 LOOP
   area:=3.14*rad*rad;
   insert into A_circle values (rad, area);
  END LOOP;
END;
