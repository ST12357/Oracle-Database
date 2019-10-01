
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER cart
  before INSERT or update OF amount ON customer_orders
  
  FOR EACH ROW
DECLARE
    Tasnim integer;
	Tasnim2 integer;
BEGIN
    SELECT product_instock
      INTO Tasnim from product where product_id=:new.order_id;
      
    Tasnim2:=Tasnim-:new.amount;

    UPDATE Product
       SET product_instock = Tasnim2
     where product_id=:new.order_id;
END;