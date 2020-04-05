DO $$
BEGIN
   FOR counter IN 1..1000 LOOP
    INSERT INTO "Pedido" ("DataCriacao", "Codigo") Values (CURRENT_TIMESTAMP AT TIME ZONE 'UTC', CONCAT('pedido_', counter));
   END LOOP;
END; $$