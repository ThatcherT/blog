start-dev:
	docker-compose -f docker-compose.local.yaml up --build
prod:
	docker-compose -f docker-compose.test.yaml up --build
drop_db:
	docker volume rm blog_db_data
venv:
	python -m venv .venv
	source .venv/bin/activate
	pip install -r requirements.txt