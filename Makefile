.PHONY: install add migrate makemigrations run shell test superuser

# Django development commands
install:
	pip3 install -r requirements.txt

add:
	pip3 install $(package)
	pip3 freeze > requirements.txt

migrate:
	python manage.py migrate

makemigrations:
	python3 manage.py makemigrations

run:
	python3 manage.py runserver

shell:
	python3 manage.py shell

test:
	python3 manage.py test

# Create a superuser
superuser:
	python3 manage.py createsuperuser
	