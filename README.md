## ELT Project using Docker, PostgreSQL and dbt

# Extract->Load->Transform, Data pipeline project, using Docker, PostgreSQL and dbt

To create the containers, use `docker compose up`

There are two postgreSQL databases:
- src_db
- dest_db

# elt/script.py:

We populate src_db with the `init.sql` file in src_db_init.
This data is backed up with `pg_dump`, and this data is used to populate dest_db.

Querying the databases:
1. `docker exec -it elt_dbt-src_postgres-1 psql -U postgres`
2. `docker exec -it elt_dbt-dest_destgres-1 psql -U postgres`

`\c ...`
`\dt ...`

`select ...from ... ;`

We utilize dbt on top of this to create more tables and queries. (dbt_project)

There is another version of this project which includes task scheduling and implementing a webserver with Airflow: ![ELT DBT with Airflow](github.com/olivermihocs/[elt_dbt](https://github.com/olivermihocs/elt_dbt_airflow).
