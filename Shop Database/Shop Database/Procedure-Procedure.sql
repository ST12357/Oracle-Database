set serveroutput on

declare

a integer;

b integer;

begin
dbms_output.put_line(a);

select sum(paid) into a from customer_orders;





select sum(paid) into b from wholesaler;

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