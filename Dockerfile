
FROM python:3.11-slim

# Install uv for professional dependency management
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

# Copy only dependency files first
COPY pyproject.toml .

# Install dependencies globally in the container
RUN uv pip install --system .

# Copy the rest of the code
COPY . .

# Set PYTHONPATH so the tests can find the 'src' and 'skills' directories
ENV PYTHONPATH=/app

# Default command
CMD ["python", "-m", "pytest", "tests/"]