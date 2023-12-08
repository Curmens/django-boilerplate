FROM python:3.12-alpine

# set work directory
WORKDIR /app
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV mode=development

COPY requirements.txt .
RUN pip install -r requirements.txt --no-deps

COPY . .

EXPOSE 9010

CMD [ "python3", "manage.py", "runserver", "0:9010" ]