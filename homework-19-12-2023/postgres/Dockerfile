# Use the official PostgreSQL base image from Docker Hub
FROM postgres:latest

ENV DEBIAN_FRONTEND=noninteractive

# Set environment variables
ENV POSTGRES_DB=mydatabase
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword

# Expose the PostgreSQL port
EXPOSE 5432

# Optionally, you can include additional setup scripts or configuration files
# COPY init.sql /docker-entrypoint-initdb.d/

# By default, the CMD instruction is provided by the official image to start PostgreSQL
# CMD ["postgres"]
