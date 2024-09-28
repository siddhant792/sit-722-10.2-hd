FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED=1
ENV DATABASE_URL=postgresql://db_10_2_hd_user:MPGb39gL4RFl3wKmqoby8khQWIw312x4@dpg-crrn78d6l47c73cljtug-a.oregon-postgres.render.com/db_10_2_hd

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
