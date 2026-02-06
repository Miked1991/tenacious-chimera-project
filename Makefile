.PHONY: setup test docker-build

# Task 3.2: Local environment setup
setup:
	uv pip install -e .

# Task 3.2: Build and run the TDD suite
test:
	docker build -t chimera-agent .
	docker run --rm chimera-agent python -m pytest tests/

# To run the makefile, type 'make test' in your terminal, NOT './makefile'

