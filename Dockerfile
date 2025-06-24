FROM postgres:15-alpine

# Usa variables de entorno para configuración dinámica
ENV POSTGRES_DB=${POSTGRES_DB}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
