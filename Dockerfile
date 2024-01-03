# FROM postgres

# ENV POSTGRES_USER=postgres
# ENV POSTGRES_PASSWORD=postgres
# ENV POSTGRES_DB=postgres



# COPY init.sql /docker-entrypoint-initdb.d/

# -----------------------------------------------------------------------------------------
# Use the official PostgreSQL image as a base
FROM postgres

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=mamsBUS

# Install PostGIS extension
RUN apt-get update \
    && apt-get install -y postgis

# Copy the initialization SQL script to the appropriate directory
COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL default port
EXPOSE 5432

# Start PostgreSQL when the container starts
CMD ["postgres"]
