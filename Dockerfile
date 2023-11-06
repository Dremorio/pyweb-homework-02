FROM python:3.11.4-slim

WORKDIR /usr/src/app

COPY ./pyweb-homework-02/personal_assistant_folder/Pipfile .
COPY ./pyweb-homework-02/personal_assistant_folder/Pipfile.lock .

RUN pip install pipenv && \
    pipenv install --system --deploy

COPY ./pyweb-homework-02/personal_assistant_folder .

CMD ["python", "personal_assistant.py"]
