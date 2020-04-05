DO $$
BEGIN
   FOR counter IN 1..1000 LOOP
      INSERT INTO "PedidoItem" ("Nome", "Quantidade", "ValorUnitario", "PedidoId", "ProdutoId")
      VALUES (
         CONCAT('Item ', counter),
         FLOOR(RANDOM() * 100 + 1),
         FLOOR(RANDOM() * 10000 + 1),
         FLOOR(RANDOM() * 1000 + 1),
         FLOOR(RANDOM() * 1000 + 1)
      );
    
   END LOOP;
END; $$