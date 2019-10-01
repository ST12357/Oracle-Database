
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER Price2
BEFORE INSERT OR UPDATE OF amount ON wholesaler_orders
REFERENCING OLD AS o NEW AS n
FOR EACH ROW

BEGIN

:n.paid:=(:n.amount)*(:n.unit_price);

END;
/