CREATE TABLE "Consumidor" -- Não normalizado
(
    "Id" BIGSERIAL PRIMARY KEY,
    "DataCriacao" DATE NOT NULL,
    "DataDelecao" DATE,
    "Nome" VARCHAR(100),
    "Email" VARCHAR(100) NOT NULL UNIQUE,
    "Telefones" VARCHAR(100)
);

/*
CREATE TABLE "Consumidor" -- Normalizado
(
    "Id" BIGSERIAL PRIMARY KEY,
    "DataCriacao" DATE NOT NULL,
    "DataDelecao" DATE,
    "Nome" VARCHAR(100),
    "Email" VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE "Telefone" (
  "Id" BIGSERIAL PRIMARY KEY,
  "Residencial" VARCHAR(20),
  "Celular" VARCHAR(20),
  "ConsumidorId" BIGINT REFERENCES "Consumidor"("Id")
);
*/