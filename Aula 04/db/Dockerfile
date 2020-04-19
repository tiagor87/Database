FROM postgres:alpine

ADD ./scripts /docker-entrypoint-initdb.d

ENV POSTGRES_DB="HardcoreDb"
ENV POSTGRES_PASSWORD=1234567