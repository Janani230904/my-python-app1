FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# This line is the key! It copies the current folder AND all subfolders (like templates)
COPY . . 

EXPOSE 5000
CMD ["python", "app.py"]
