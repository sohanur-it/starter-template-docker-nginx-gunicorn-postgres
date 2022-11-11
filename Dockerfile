from python:3
ENV PYTHONUFFERED=1
RUN apt update
RUN mkdir /app
WORKDIR /app 
COPY ./app /app/

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# RUN cd /app

# CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000"]