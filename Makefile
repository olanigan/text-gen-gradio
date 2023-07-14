install:
	pip install -r requirements.txt

run:
	python generator.py

lint:
	pylint --disable=R,C,E1120 *.py

all: install lint run