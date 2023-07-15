FROM python:3.10 AS builder

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

FROM python:3.10-alpine

COPY --from=builder . .

CMD ["python", "generator.py"]