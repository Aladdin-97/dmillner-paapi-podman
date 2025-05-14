# Python app container
FROM python:3.9

# Set envs
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Install Python & OS deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc libsqlite3-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set up code
WORKDIR /code
COPY ./ /code
#COPY ./requirements.txt /code/requirements.txt No need this since we are copying the whole directory

# Install deps
RUN pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 80
# Run Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
