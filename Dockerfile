FROM python:3.10-slim

WORKDIR /app

COPY counter.py .
COPY gauge.py .
COPY summary.py .
COPY histogram.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8282 8181

CMD ["python", "counter.py"]