This repo looks into a tiny dbt setup to verify some assumptions and ideas.

### How to start?

Install dbt: `pip install dbt-postgres`

Create database: `docker-compose up`

Then you can run dbt commands (see [Makefile](Makefile) for examples).

Order for the demo:
```
create_datalake_test

create_datalake_prod

create_internal_test

create_internal_prod

create_customer_test

create_customer_prod

test_test

test_prod
```
