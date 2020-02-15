# Makefile to summarizes steps for publishing a new version

VERSION=$(shell python3 -c "import pyepgnotify; print(pyepgnotify.__version__)")

default:
	@echo Nothing to build. Use \"make publish\" to tag \"master\" and submit via twine.

tag:
	# Ensure master branch was checked out
	@if [ "$(shell git rev-parse --abbrev-ref HEAD)" != "master" ]; then exit 1; fi
	@echo "tagging v$(VERSION)"
	git tag v$(VERSION)
	@echo "push tag v$(VERSION)"
	git push --tags

submit: setup.py
	@if [ "$(shell git rev-parse --abbrev-ref HEAD)" != "master" ]; then exit 1; fi
	rm -f dist/*
	python3 setup.py sdist
	python3 setup.py bdist_wheel --universal
	twine upload dist/*

publish: tag submit

clean:
	@find . | grep -E "(__pycache__|\.pyc|\.pyo$\)" | xargs rm -rf
	@rm -rf *.egg-info/ build/ dist/ MANIFEST

