FROM python:3.11.4-slim

WORKDIR /usr/src/app

COPY Pipfile .
COPY Pipfile.lock .

RUN pip install pipenv && \
    pipenv install --system --deploy

COPY personal_assistant_folder/personal_assistant_folder .

CMD ["python", "personal_assistant.py"]
