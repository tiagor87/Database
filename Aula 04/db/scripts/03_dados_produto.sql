DO $$
BEGIN
   FOR counter IN 1..1000000 LOOP
    INSERT INTO "Produto" ("DataCriacao", "Codigo", "Nome", "Valor") Values (CURRENT_TIMESTAMP AT TIME ZONE 'UTC', CONCAT('produto_', counter), CONCAT('Produto ', counter),  counter);
   END LOOP;
END; $$