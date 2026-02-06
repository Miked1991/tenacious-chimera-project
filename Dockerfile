# Task 3.2: Professional CloudOps Environment 
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install uv && uv pip install --system .
CMD ["make", "test"] # Standardized automation entry point