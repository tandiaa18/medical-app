FROM python:3.11-slim
WORKDIR /webapp
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ .
EXPOSE 8080, 80, 443
CMD ["python", "main.py"]
