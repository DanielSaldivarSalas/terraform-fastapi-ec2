FROM python:3.10

WORKDIR /code
RUN pip install pdm

COPY pyproject.toml pdm.lock /code/
RUN pdm install
COPY ./app/ /code/app

EXPOSE 8000

CMD ["pdm", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0"]