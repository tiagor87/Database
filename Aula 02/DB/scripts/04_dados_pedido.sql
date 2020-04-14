DO $$
BEGIN
   FOR counter IN 1..1000 LOOP
      INSERT INTO "Pedido" (
         "DataCriacao",
         "Codigo",
         "ConsumidorId"
      ) Values (
         CURRENT_TIMESTAMP AT TIME ZONE 'UTC',
         CONCAT('pedido_', counter),
         FLOOR(RANDOM() * 1000 + 1));
   END LOOP;
END; $$