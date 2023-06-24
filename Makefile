install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

tests:
	python -m pytest -vvv -cov=hello --cov=greeting \
		--cov=smath --cov=web tests
	pyhton -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb 

one-test:
	python -m pytest -vv tests/test_greeting.py::testmy_name4