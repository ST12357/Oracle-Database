SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getname IS 

a integer :=5;

b integer;

begin
dbms_output.put_line(a);

select sum(paid) into a from customer_orders where order_id=1;


select sum(paid) into b from wholesaler where product_id=1;

dbms_output.put_line(a-b);

if a>b
then
a:=a-b;
dbms_output.put_line('Net Profit:'||a);

elsif a<b
then
b:=b-a;
dbms_output.put_line('Net Loss:'||b);
else
dbms_output.put_line('No Profit Made');
end if;

end;



BEGIN
   getname;
END;
/

DROP PROCEDURE getname; 