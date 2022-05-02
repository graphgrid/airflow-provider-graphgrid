FROM python:3.8.10-slim

WORKDIR /opt/airflow-provider-graphgrid

COPY graphgrid_provider graphgrid_provider
COPY tests tests
COPY .coveragerc .coveragerc
COPY .pylintrc .pylintrc
COPY requirements.txt requirements.txt

RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]
CMD [ "tests/test_runner.py" ]