setup: # Installs dependencies [cite: 117]
	uv pip install .

test: # Runs failing tests in Docker [cite: 118]
	docker run --rm chimera-agent pytest tests/

spec-check: # Verifies code aligns with specs [cite: 119]
	python scripts/spec_validator.py