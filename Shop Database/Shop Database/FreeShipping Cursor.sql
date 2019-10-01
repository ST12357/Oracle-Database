set serveroutput on
declare
Cust_name customer.customer_name%Type;
cursor Free_Shipping is
select customer_name into Cust_name from Customer where paid >200;
begin 
if not Free_Shipping%isopen
then
open Free_Shipping;
end if;
loop
fetch Free_Shipping into Cust_name;
exit when Free_Shipping%notfound;
DBMS_OUTPUT.PUT_LINE('Free Shipping Available For:=' || Free_Shipping%rowcount||':'||Cust_name);
end loop;
close Free_Shipping;
end;
/
