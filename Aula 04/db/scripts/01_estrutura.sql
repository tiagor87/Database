CREATE TABLE "Produto"
(
    "Id" BIGSERIAL PRIMARY KEY,
    "DataCriacao" DATE NOT NULL,
    "DataDelecao" DATE,
    "Codigo" VARCHAR(20) NOT NULL UNIQUE,
    "Nome" VARCHAR(100) NOT NULL,
    "Valor" INT NOT NULL,
    CHECK ("Valor" >= 0)
);

CREATE TABLE "Consumidor"
(
    "Id" BIGSERIAL PRIMARY KEY,
    "DataCriacao" DATE NOT NULL,
    "DataDelecao" DATE,
    "Nome" VARCHAR(100),
    "Email" VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE "Pedido"
(
    "Id" BIGSERIAL PRIMARY KEY,
    "Codigo" VARCHAR(20) NOT NULL UNIQUE,
    "DataCriacao" DATE NOT NULL,
    "DataCancelamento" DATE,
    "DataPagamento" DATE,
    "ConsumidorId" BIGINT REFERENCES "Consumidor"("Id")
);

CREATE TABLE "PedidoItem"
(
    "Id" BIGSERIAL PRIMARY KEY,
    "Nome" VARCHAR(100) NOT NULL,
    "Quantidade" INT,
    "ValorUnitario" INT,
    "PedidoId" BIGINT REFERENCES "Pedido"("Id"),
    "ProdutoId" BIGINT REFERENCES "Produto"("Id"),
    CHECK ("Quantidade" >= 0),
    CHECK ("ValorUnitario" >= 0)
);