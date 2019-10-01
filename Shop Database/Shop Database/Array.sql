set serveroutput on
CREATE OR REPLACE PROCEDURE getname IS 
type namearray is varray(10) of integer;

a namearray := namearray();
counter number(3);


   
BEGIN
  
for counter in 1..10
loop
a.extend;
select product_instock into a(counter) from product where product_id=counter;
end loop;



for counter in 1..a.count
loop
if a(counter)<1
then
dbms_output.put_line('product '||counter||' : Not Available');
else
dbms_output.put_line('product '||counter||' : Available');
End if;
end loop; 
end;
execute getname;