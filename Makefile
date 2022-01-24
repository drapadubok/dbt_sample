create_datalake_test:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt run \
		--target test \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile test \
		--project-dir parametrized_sql_models \
		--vars '{"version":"v8"}' \
		--select tag:datalake

create_datalake_prod:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt run \
		--target prod \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile prod \
		--project-dir parametrized_sql_models \
		--vars '{"version":"v8"}' \
		--select tag:datalake

create_internal_test:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt run \
		--target test \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile test \
		--project-dir parametrized_sql_models \
		--vars '{"version":"v8"}' \
		--select tag:internal

create_internal_prod:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt run \
		--target prod \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile prod \
		--project-dir parametrized_sql_models \
		--vars '{"version":"v8"}' \
		--select tag:internal

create_customer_test:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt run \
		--target test \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile test \
		--project-dir parametrized_sql_models \
		--vars '{"customer_id":"test","version":"v8"}' \
		--select tag:user_facing

create_customer_prod:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt run \
		--target prod \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile prod \
		--project-dir parametrized_sql_models \
		--vars '{"customer_id":"c1","version":"v8"}' \
		--select tag:user_facing

test_test:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt test \
		--target test \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile test \
		--project-dir parametrized_sql_models \
		--vars '{"customer_id":"test","version":"v8"}' \

test_prod:
	POSTGRES_USER=postgres POSTGRES_PASSWORD=password dbt test \
		--target prod \
		--profiles-dir parametrized_sql_models/profiles/ \
		--profile prod \
		--project-dir parametrized_sql_models \
		--vars '{"customer_id":"c1","version":"v8"}'
