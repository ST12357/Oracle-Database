
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER Price
BEFORE INSERT OR UPDATE OF amount ON customer_orders
REFERENCING OLD AS o NEW AS n
FOR EACH ROW

BEGIN

:n.paid:=(:n.amount)*(:n.unit_price);

END;
/