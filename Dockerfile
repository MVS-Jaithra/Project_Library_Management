FROM python:3.11-slim

WORKDIR /app

COPY library/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY library/ .

EXPOSE 5000

CMD ["python", "app.py"]
