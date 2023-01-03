#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER odoo WITH PASSWORD 'P@ssw0rd';
	ALTER USER odoo WITH SUPERUSER;
EOSQL