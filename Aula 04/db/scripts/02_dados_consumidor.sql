DO $$
BEGIN
   FOR counter IN 1..1000000 LOOP
    INSERT INTO "Consumidor" ("DataCriacao", "Nome", "Email") Values (CURRENT_TIMESTAMP AT TIME ZONE 'UTC', CONCAT('Consumidor ', counter), CONCAT(CONCAT('consumidor_', counter), '@email.com'));
   END LOOP;
END; $$