# Aula 03

Nessa aula vamos fazer algumas consultas em nossa base de dados e aprender um pouco sobre teoria de conjuntos.

```sql
-- Quais consumidores que possuem algum pedido?

/*
SELECT
  C.*
FROM
  "Consumidor" C INNER JOIN "Pedido" P ON C."Id" = P."ConsumidorId"
*/

-- Quais os consumidores que não possuem pedidos?

/*
SELECT
  C.*
FROM
  "Consumidor" C LEFT OUTER JOIN "Pedido" P ON C."Id" = P."ConsumidorId"
WHERE
  P."Id" IS NULL
*/

-- Quem é o consumidor que mais comprou (valor)?
/*
SELECT
  P."ConsumidorId",
  SUM(PI."Quantidade" * PI."ValorUnitario") as "ValorTotal"
FROM
  "Pedido" P INNER JOIN "PedidoItem" PI ON P."Id" = PI."PedidoId"
GROUP BY
  P."ConsumidorId"
ORDER BY
  P."ConsumidorId",
  "ValorTotal" DESC
LIMIT 1
*/
-- Quem é o consumidor que mais vezes comprou?
????

-- Quanto cada consumidor gastou, em quantos pedidos?
????
```